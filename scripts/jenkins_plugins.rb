require 'pp'
require 'net/http'

class Hash
  def self.recursive
    new { |hash, key| hash[key] = recursive }
  end
end
$default_mock = Hash.recursive
def default
  $default_mock
end unless respond_to? :default
def node
  $default_mock
end unless respond_to? :node

class UpdateCenter
  def initialize(plugins)
    @requested_plugins =
        plugins.map { |name, plugin| ["#{name}", plugin] }.to_h
  end

  def post(data)
    @remote_plugins = _parse_remote_plugins(data)

    @plugins_lock = {}
    @requested_plugins.each do |name, plugin|
      _resolve_dependencies(name, plugin)
    end

    lock_string = "# This file is auto generated file by scripts/generate_plugins_lock.rb\n"
    lock_string += "# DO NOT EDIT MANUALLY\n"
    lock_string += "\n"
    lock_string += "default['jenkins']['master']['plugins_lock'] =\n"
    lock_string += PP.pp(@plugins_lock, '')
    File.write(File.expand_path('../attributes/plugins_lock.rb', File.dirname(__FILE__)), lock_string)

    _puts 'Done'
  end

  def _parse_remote_plugins(data)
    data[:plugins].map { |name, plugin| ["#{name}", plugin] }.to_h
  end

  def _resolve_dependencies(name, plugin)
    _puts "#{name} => #{plugin.inspect}"
    @remote_plugins[name][:dependencies].each do |dep|
      _puts "#{dep}"
      if !(dep.key?(:optional) && dep[:optional])
        _resolve_dependencies(dep[:name], dep)
      else
        _puts "Skip optional #{dep[:name]}:#{dep[:version]}"
      end
    end
    if @requested_plugins.key?(name) &&
        (!@plugins_lock.key?(name) || @plugins_lock[name]['version'] != @requested_plugins[name]['version'])
      _puts "Put requested plugin #{name}:#{@requested_plugins[name]['version']}"
      @plugins_lock[name] = { 'version' => @requested_plugins[name]['version'] }
    elsif !@plugins_lock.key?(name)
      _puts "Put dependency plugin #{name}:#{@remote_plugins[name][:version]}"
      @plugins_lock[name] = { 'version' => @remote_plugins[name][:version] }
    end
  end
end

def _puts(msg)
  puts msg
end

def _do
  require_relative '../attributes/master'
  require_relative '../attributes/plugins'
  updateCenter = UpdateCenter.new(node['jenkins']['master']['plugins'])
  uri = URI.parse(node['jenkins']['master']['update_site_url'])
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  eval(response.body)
end
