require 'json'
require 'pp'

plugins = JSON.parse(<<-EOF)
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins jQuery plugin",
      "pinned" : false,
      "shortName" : "jquery",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/jQuery+Plugin",
      "version" : "1.11.2-0"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "analysis-core",
          "version" : "1.73"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.2.1"
        },
        {
          "optional" : true,
          "shortName" : "dashboard-view",
          "version" : "2.9.4;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.10;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "maven-plugin",
          "version" : "2.9;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "FindBugs Plug-in",
      "pinned" : false,
      "shortName" : "findbugs",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/x/GYAs",
      "version" : "4.62"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Matrix Project Plugin",
      "pinned" : true,
      "shortName" : "matrix-project",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Matrix+Project+Plugin",
      "version" : "1.3"
    },
    {
      "active" : false,
      "backupVersion" : "1.6",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : false,
      "hasUpdate" : true,
      "longName" : "LDAP Plugin",
      "pinned" : true,
      "shortName" : "ldap",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/LDAP+Plugin",
      "version" : "1.10.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "parameterized-trigger",
          "version" : "2.21"
        },
        {
          "optional" : false,
          "shortName" : "jquery",
          "version" : "1.7.2-1"
        },
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.9"
        },
        {
          "optional" : true,
          "shortName" : "build-pipeline-plugin",
          "version" : "1.4.4;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "analysis-core",
          "version" : "1.54;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "promoted-builds",
          "version" : "2.17;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Delivery Pipeline Plugin",
      "pinned" : false,
      "shortName" : "delivery-pipeline-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Delivery+Pipeline+Plugin",
      "version" : "0.9.7"
    },
    {
      "active" : true,
      "backupVersion" : "1.1",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Javadoc Plugin",
      "pinned" : true,
      "shortName" : "javadoc",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Javadoc+Plugin",
      "version" : "1.3"
    },
    {
      "active" : true,
      "backupVersion" : "1.54",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mapdb-api",
          "version" : "1.0.1.0"
        },
        {
          "optional" : false,
          "shortName" : "ssh-credentials",
          "version" : "1.6.1"
        },
        {
          "optional" : false,
          "shortName" : "scm-api",
          "version" : "0.2"
        },
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.10"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Subversion Plug-in",
      "pinned" : true,
      "shortName" : "subversion",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Subversion+Plugin",
      "version" : "2.5.4"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.5.1"
        },
        {
          "optional" : false,
          "shortName" : "run-condition",
          "version" : "0.7"
        },
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Flexible Publish Plugin",
      "pinned" : false,
      "shortName" : "flexible-publish",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Flexible+Publish+Plugin",
      "version" : "0.15.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Matrix Authorization Strategy Plugin",
      "pinned" : true,
      "shortName" : "matrix-auth",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Matrix+Authorization+Strategy+Plugin",
      "version" : "1.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Exclusion Plug-in",
      "pinned" : false,
      "shortName" : "Exclusion",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Exclusion-Plugin",
      "version" : "0.10"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.5.1"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins build timeout plugin",
      "pinned" : false,
      "shortName" : "build-timeout",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Build-timeout+Plugin",
      "version" : "1.15"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "view-job-filters",
          "version" : "1.26;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "credentials",
          "version" : "1.14;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "claim",
          "version" : "2.1;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Build Monitor View",
      "pinned" : false,
      "shortName" : "build-monitor-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Build+Monitor+Plugin",
      "version" : "1.6+build.159"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Multiple SCMs plugin",
      "pinned" : false,
      "shortName" : "multiple-scms",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Multiple+SCMs+Plugin",
      "version" : "0.5"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Copy To Slave Plugin",
      "pinned" : false,
      "shortName" : "copy-to-slave",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Copy+To+Slave+Plugin",
      "version" : "1.4.4"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "1.509.4"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Dashboard View",
      "pinned" : false,
      "shortName" : "dashboard-view",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Dashboard+View",
      "version" : "2.9.6"
    },
    {
      "active" : true,
      "backupVersion" : "2.5",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.7"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.6"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.1;resolution:=optional"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Maven Integration plugin",
      "pinned" : true,
      "shortName" : "maven-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Maven+Project+Plugin",
      "version" : "2.12.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.22"
        },
        {
          "optional" : false,
          "shortName" : "git-client",
          "version" : "1.18.0"
        },
        {
          "optional" : false,
          "shortName" : "scm-api",
          "version" : "0.2"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.15"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.4"
        },
        {
          "optional" : false,
          "shortName" : "ssh-credentials",
          "version" : "1.11"
        },
        {
          "optional" : true,
          "shortName" : "promoted-builds",
          "version" : "2.21;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.10;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "parameterized-trigger",
          "version" : "2.4;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins GIT plugin",
      "pinned" : false,
      "shortName" : "git",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin",
      "version" : "2.4.0"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "email-ext",
          "version" : "2.11;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "subversion",
          "version" : "1.24;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "git",
          "version" : "1.2.0;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "cvs",
          "version" : "2.9;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "View Job Filters",
      "pinned" : false,
      "shortName" : "view-job-filters",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/View+Job+Filters",
      "version" : "1.27"
    },
    {
      "active" : true,
      "backupVersion" : "1.8",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ssh-credentials",
          "version" : "1.6.1"
        },
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.9.4"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins SSH Slaves plugin",
      "pinned" : true,
      "shortName" : "ssh-slaves",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/SSH+Slaves+plugin",
      "version" : "1.10"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "deployment-notification",
          "version" : "1.1"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "chef-tracking",
      "pinned" : false,
      "shortName" : "chef-tracking",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://jenkins-ci.org/plugin/chef-tracking/",
      "version" : "1.0"
    },
    {
      "active" : false,
      "backupVersion" : "2.11",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : false,
      "hasUpdate" : false,
      "longName" : "Jenkins CVS Plug-in",
      "pinned" : true,
      "shortName" : "cvs",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/CVS+Plugin",
      "version" : "2.12"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "subversion",
          "version" : "1.38;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "promoted-builds",
          "version" : "2.10;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "matrix-project",
          "version" : "1.4;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "conditional-buildstep",
          "version" : "1.3.1;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Parameterized Trigger plugin",
      "pinned" : false,
      "shortName" : "parameterized-trigger",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Parameterized+Trigger+Plugin",
      "version" : "2.29"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.5.1;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "build-name-setter",
      "pinned" : false,
      "shortName" : "build-name-setter",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Build+Name+Setter+Plugin",
      "version" : "1.5"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Least Load plugin",
      "pinned" : false,
      "shortName" : "leastload",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Least+Load+Plugin",
      "version" : "1.0.3"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Build Blocker Plugin",
      "pinned" : false,
      "shortName" : "build-blocker-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Build+Blocker+Plugin",
      "version" : "1.7.1"
    },
    {
      "active" : false,
      "backupVersion" : "1.10",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : false,
      "hasUpdate" : true,
      "longName" : "Jenkins Translation Assistance plugin",
      "pinned" : true,
      "shortName" : "translation",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Translation+Assistance+Plugin",
      "version" : "1.11"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.2.1"
        },
        {
          "optional" : false,
          "shortName" : "analysis-core",
          "version" : "1.73"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.10;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "dashboard-view",
          "version" : "2.9.4;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "maven-plugin",
          "version" : "2.9;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Checkstyle Plug-in",
      "pinned" : false,
      "shortName" : "checkstyle",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/x/GYCGAQ",
      "version" : "3.43"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Cucumber-jvm reports",
      "pinned" : false,
      "shortName" : "cucumber-reports",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://github.com/jenkinsci/cucumber-reports-plugin",
      "version" : "2.5.1"
    },
    {
      "active" : true,
      "backupVersion" : "0.19",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.4"
        },
        {
          "optional" : false,
          "shortName" : "github-api",
          "version" : "1.58"
        },
        {
          "optional" : false,
          "shortName" : "git",
          "version" : "2.0.3"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Github Authentication plugin",
      "pinned" : false,
      "shortName" : "github-oauth",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Github+OAuth+Plugin",
      "version" : "0.20"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.5"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.4"
        },
        {
          "optional" : true,
          "shortName" : "mailer",
          "version" : "1.5;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Claim Plugin",
      "pinned" : false,
      "shortName" : "claim",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Claim+plugin",
      "version" : "2.7"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.8"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins disk-usage plugin",
      "pinned" : false,
      "shortName" : "disk-usage",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Disk+Usage+Plugin",
      "version" : "0.25"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.5"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Gravatar plugin",
      "pinned" : false,
      "shortName" : "gravatar",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Gravatar+Plugin",
      "version" : "2.1"
    },
    {
      "active" : true,
      "backupVersion" : "1.10",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.21"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "SSH Credentials Plugin",
      "pinned" : true,
      "shortName" : "ssh-credentials",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/SSH+Credentials+Plugin",
      "version" : "1.11"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.4"
        },
        {
          "optional" : true,
          "shortName" : "ant",
          "version" : "1.1;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.10;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "maven-plugin",
          "version" : "2.9;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "dashboard-view",
          "version" : "2.9.4;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Static Analysis Utilities",
      "pinned" : true,
      "shortName" : "analysis-core",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/x/CwDgAQ",
      "version" : "1.74"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "1.480.3"
        },
        {
          "optional" : false,
          "shortName" : "run-condition",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.5.1"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "conditional-buildstep",
      "pinned" : false,
      "shortName" : "conditional-buildstep",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Conditional+BuildStep+Plugin",
      "version" : "1.3.3"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Script Security Plugin",
      "pinned" : false,
      "shortName" : "script-security",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Script+Security+Plugin",
      "version" : "1.15"
    },
    {
      "active" : true,
      "backupVersion" : "1.9.1",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "github-api",
          "version" : "1.42"
        },
        {
          "optional" : false,
          "shortName" : "git",
          "version" : "2.0"
        },
        {
          "optional" : true,
          "shortName" : "multiple-scms",
          "version" : "0.2;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "GitHub plugin",
      "pinned" : false,
      "shortName" : "github",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Github+Plugin",
      "version" : "1.10"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Workflow: Step API",
      "pinned" : false,
      "shortName" : "workflow-step-api",
      "supportsDynamicLoad" : "YES",
      "url" : "https://github.com/jenkinsci/workflow-plugin",
      "version" : "1.4.3"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "1.481"
        },
        {
          "optional" : true,
          "shortName" : "promoted-builds",
          "version" : "2.0;resolution:=optional"
        },
        {
          "optional" : true,
          "shortName" : "dashboard-view",
          "version" : "2.0;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Release Plugin",
      "pinned" : false,
      "shortName" : "release",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Release+Plugin",
      "version" : "2.5.4"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.3"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "BlazeMeter plugin",
      "pinned" : false,
      "shortName" : "BlazeMeterJenkinsPlugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/BlazeMeter+Plugin",
      "version" : "2.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "jquery",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins jQuery UI plugin",
      "pinned" : false,
      "shortName" : "jquery-ui",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/jQuery+UI+Plugin",
      "version" : "1.0.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "External Monitor Job Type Plugin",
      "pinned" : false,
      "shortName" : "external-monitor-job",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Monitoring+external+jobs",
      "version" : "1.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Timestamper",
      "pinned" : false,
      "shortName" : "timestamper",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Timestamper",
      "version" : "1.6.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "promoted-builds",
          "version" : "2.7;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "deployment-notification",
      "pinned" : false,
      "shortName" : "deployment-notification",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Deploment+Notification+Plugin",
      "version" : "1.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "NodeJS Plugin",
      "pinned" : false,
      "shortName" : "nodejs",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/NodeJS+Plugin",
      "version" : "0.2.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "SCM API Plugin",
      "pinned" : false,
      "shortName" : "scm-api",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/SCM+API+Plugin",
      "version" : "0.2"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Rebuilder",
      "pinned" : false,
      "shortName" : "rebuild",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Rebuild+Plugin",
      "version" : "1.25"
    },
    {
      "active" : true,
      "backupVersion" : "1.59",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "GitHub API Plugin",
      "pinned" : false,
      "shortName" : "github-api",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/GitHub+API+Plugin",
      "version" : "1.67"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Environment Injector Plugin",
      "pinned" : false,
      "shortName" : "envinject",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/EnvInject+Plugin",
      "version" : "1.92.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ssh-credentials",
          "version" : "1.11"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins GIT client plugin",
      "pinned" : false,
      "shortName" : "git-client",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Git+Client+Plugin",
      "version" : "1.19.0"
    },
    {
      "active" : true,
      "backupVersion" : "1.1",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "OWASP Markup Formatter Plugin",
      "pinned" : true,
      "shortName" : "antisamy-markup-formatter",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/OWASP+Markup+Formatter+Plugin",
      "version" : "1.3"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Throttle Concurrent Builds Plug-in",
      "pinned" : false,
      "shortName" : "throttle-concurrents",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Throttle+Concurrent+Builds+Plugin",
      "version" : "1.8.4"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.21"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Plain Credentials Plugin",
      "pinned" : true,
      "shortName" : "plain-credentials",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Plain+Credentials+Plugin",
      "version" : "1.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "git",
          "version" : "2.2.4"
        },
        {
          "optional" : false,
          "shortName" : "github-api",
          "version" : "1.66"
        },
        {
          "optional" : false,
          "shortName" : "github",
          "version" : "1.9.1"
        },
        {
          "optional" : false,
          "shortName" : "ssh-agent",
          "version" : "1.3"
        },
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.10;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "GitHub Pull Request Builder",
      "pinned" : false,
      "shortName" : "ghprb",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/GitHub+pull+request+builder+plugin",
      "version" : "1.21"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "2.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Job Configuration History Plugin",
      "pinned" : false,
      "shortName" : "jobConfigHistory",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/JobConfigHistory+Plugin",
      "version" : "2.12"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "MapDB API Plugin",
      "pinned" : false,
      "shortName" : "mapdb-api",
      "supportsDynamicLoad" : "YES",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/MapDB+API+Plugin",
      "version" : "1.0.1.0"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.4"
        },
        {
          "optional" : false,
          "shortName" : "run-condition",
          "version" : "0.5"
        },
        {
          "optional" : false,
          "shortName" : "conditional-buildstep",
          "version" : "0.2"
        },
        {
          "optional" : false,
          "shortName" : "flexible-publish",
          "version" : "0.7"
        },
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Any Build Step Plugin",
      "pinned" : false,
      "shortName" : "any-buildstep",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Any+Build+Step+Plugin",
      "version" : "0.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.4"
        },
        {
          "optional" : false,
          "shortName" : "run-condition",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.24"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.9"
        },
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "2.11"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Sauce OnDemand plugin",
      "pinned" : false,
      "shortName" : "sauce-ondemand",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Sauce+OnDemand+Plugin",
      "version" : "1.149"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "2.7.1"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins SonarQube Plugin",
      "pinned" : false,
      "shortName" : "sonar",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://redirect.sonarsource.com/plugins/jenkins.html",
      "version" : "2.2.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins user build vars plugin",
      "pinned" : false,
      "shortName" : "build-user-vars-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Build+User+Vars+Plugin",
      "version" : "1.4"
    },
    {
      "active" : false,
      "backupVersion" : "1.1",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : false,
      "hasUpdate" : true,
      "longName" : "PAM Authentication plugin",
      "pinned" : true,
      "shortName" : "pam-auth",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/PAM+Authentication+Plugin",
      "version" : "1.2"
    },
    {
      "active" : true,
      "backupVersion" : "1.3",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ssh-credentials",
          "version" : "1.11"
        },
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.22"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "SSH Agent Plugin",
      "pinned" : false,
      "shortName" : "ssh-agent",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/SSH+Agent+Plugin",
      "version" : "1.7"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "AnsiColor",
      "pinned" : false,
      "shortName" : "ansicolor",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/AnsiColor+Plugin",
      "version" : "0.4.1"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins Port Allocator Plug-in",
      "pinned" : false,
      "shortName" : "port-allocator",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Port+Allocator+Plugin",
      "version" : "1.8"
    },
    {
      "active" : true,
      "backupVersion" : "1.1",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "JUnit Plugin",
      "pinned" : true,
      "shortName" : "junit",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/JUnit+Plugin",
      "version" : "1.9"
    },
    {
      "active" : true,
      "backupVersion" : "1.10",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins Mailer Plugin",
      "pinned" : true,
      "shortName" : "mailer",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Mailer",
      "version" : "1.16"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.5.1"
        },
        {
          "optional" : false,
          "shortName" : "ant",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Run Condition Plugin",
      "pinned" : false,
      "shortName" : "run-condition",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Run+Condition+Plugin",
      "version" : "1.0"
    },
    {
      "active" : true,
      "backupVersion" : "1.4",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Jenkins sbt plugin",
      "pinned" : false,
      "shortName" : "sbt",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/sbt+plugin",
      "version" : "1.5"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Green Balls",
      "pinned" : false,
      "shortName" : "greenballs",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Green+Balls",
      "version" : "1.15"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "token-macro",
          "version" : "1.4;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Groovy",
      "pinned" : false,
      "shortName" : "groovy",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Groovy+plugin",
      "version" : "1.27"
    },
    {
      "active" : true,
      "backupVersion" : "1.3",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "plain-credentials",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "credentials",
          "version" : "1.20"
        },
        {
          "optional" : false,
          "shortName" : "workflow-step-api",
          "version" : "1.1"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Credentials Binding Plugin",
      "pinned" : true,
      "shortName" : "credentials-binding",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Credentials+Binding+Plugin",
      "version" : "1.3"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Next Build Number Plugin",
      "pinned" : false,
      "shortName" : "next-build-number",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Next+Build+Number+Plugin",
      "version" : "1.1"
    },
    {
      "active" : true,
      "backupVersion" : "2.21",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "maven-plugin",
          "version" : "1.448"
        },
        {
          "optional" : false,
          "shortName" : "javadoc",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Jenkins promoted builds plugin",
      "pinned" : true,
      "shortName" : "promoted-builds",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Promoted+Builds+Plugin",
      "version" : "2.16"
    },
    {
      "active" : false,
      "backupVersion" : null,
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [

      ],
      "downgradable" : false,
      "enabled" : false,
      "hasUpdate" : true,
      "longName" : "Windows Slaves Plugin",
      "pinned" : false,
      "shortName" : "windows-slaves",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Windows+Slaves+Plugin",
      "version" : "1.0"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.5"
        },
        {
          "optional" : false,
          "shortName" : "script-security",
          "version" : "1.6"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.4"
        },
        {
          "optional" : false,
          "shortName" : "token-macro",
          "version" : "1.10"
        },
        {
          "optional" : true,
          "shortName" : "analysis-core",
          "version" : "1.54;resolution:=optional"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Email Extension Plugin",
      "pinned" : false,
      "shortName" : "email-ext",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Email-ext+plugin",
      "version" : "2.40.5"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : true,
          "shortName" : "credentials",
          "version" : "1.9.4;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Job DSL",
      "pinned" : true,
      "shortName" : "job-dsl",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Job+DSL+Plugin",
      "version" : "1.26-SNAPSHOT (private-09/25/2014 17:26-me)"
    },
    {
      "active" : true,
      "backupVersion" : "1.22",
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : true,
      "longName" : "Credentials Plugin",
      "pinned" : true,
      "shortName" : "credentials",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Credentials+Plugin",
      "version" : "1.24"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Token Macro Plugin",
      "pinned" : false,
      "shortName" : "token-macro",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Token+Macro+Plugin",
      "version" : "1.11"
    },
    {
      "active" : true,
      "backupVersion" : null,
      "bundled" : true,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "external-monitor-job",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "ldap",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "pam-auth",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "mailer",
          "version" : "1.2"
        },
        {
          "optional" : false,
          "shortName" : "matrix-auth",
          "version" : "1.0.2"
        },
        {
          "optional" : false,
          "shortName" : "windows-slaves",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "antisamy-markup-formatter",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : false,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Ant Plugin",
      "pinned" : true,
      "shortName" : "ant",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "http://wiki.jenkins-ci.org/display/JENKINS/Ant+Plugin",
      "version" : "1.2"
    },
    {
      "active" : true,
      "backupVersion" : "1.4.7",
      "bundled" : false,
      "deleted" : false,
      "dependencies" : [
        {
          "optional" : false,
          "shortName" : "parameterized-trigger",
          "version" : "2.17"
        },
        {
          "optional" : false,
          "shortName" : "jquery",
          "version" : "1.7.2-1"
        },
        {
          "optional" : true,
          "shortName" : "dashboard-view",
          "version" : "2.2;resolution:=optional"
        },
        {
          "optional" : false,
          "shortName" : "matrix-project",
          "version" : "1.0"
        },
        {
          "optional" : false,
          "shortName" : "junit",
          "version" : "1.0"
        }
      ],
      "downgradable" : true,
      "enabled" : true,
      "hasUpdate" : false,
      "longName" : "Build Pipeline Plugin",
      "pinned" : false,
      "shortName" : "build-pipeline-plugin",
      "supportsDynamicLoad" : "MAYBE",
      "url" : "https://wiki.jenkins-ci.org/display/JENKINS/Build+Pipeline+Plugin",
      "version" : "1.4.8"
    }
EOF

parsed = plugins.map { |key, value| {'name' => key, 'version' => value['version'], 'pin' => true} }
result = {'id' => 'plugins', 'versions' => parsed}
puts JSON.pretty_generate(result)
