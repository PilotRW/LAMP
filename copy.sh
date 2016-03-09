#declare variables
TARGETHOST="administrator@192.168.1.20"
TARGETPORT="22"
SILENTMODE="-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" 
VMNAME="LAMP_test"
SNAPSHOTNAME="Host_only_Network"

#restoring virtual machine to clean state
vboxmanage snapshot $VMNAME restore $SNAPSHOTNAME

#start virtual machine
vboxmanage startvm $VMNAME

#copying files
scp $SILENTMODE -P $TARGETPORT lamp.sh $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT iptables $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT reverse-proxy.conf $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT ssl.conf $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT tomcat-users.xml $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT httpd.conf $TARGETHOST:/home/administrator


#runing script
ssh $SILENTMODE -p $TARGETPORT $TARGETHOST "cd /home/administrator && ./lamp.sh"


