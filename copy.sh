TARGETHOST="administrator@localhost"
TARGETPORT="2222"
SILENTMODE="-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
ssh-copy-id $SILENTMODE -p $TARGETPORT $TARGETHOST 
scp $SILENTMODE -P $TARGETPORT lamp.sh $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT iptables.sh $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT reverse-proxy.conf $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT ssl.conf $TARGETHOST:/home/administrator
scp $SILENTMODE -P $TARGETPORT tomcat-users.xml $TARGETHOST:/home/administrator
ssh $SILENTMODE -p $TARGETPORT $TARGETHOST "cd /home/administrator && ./lamp.sh"
