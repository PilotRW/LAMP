#!/bin/bash
#clone template machine
vboxmanage clonevm LAMP_Template --snapshot Clear_v2 --name LAMP_1 --register
#start new machine
vboxmanage startvm LAMP_1 --type headless
#while $? 
#clone github repo & start lamp script
sleep 1m
#CONVERGE_CMD="vboxmanage guestcontrol LAMP_1 run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator""
#$CONVERGE_CMD
#echo CONVERGE_EXIT_CODE: $? 
#if [ $? != 1 ]
#then
#sleep 1m
#$CONVERGE_CMD
#fi
vboxmanage guestcontrol "LAMP_1" run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator && git clone https://github.com/PilotRW/LAMP.git"
vboxmanage guestcontrol "LAMP_1" run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator && chown -R -h administrator:administrator /home/administrator/LAMP/"
vboxmanage guestcontrol "LAMP_1" run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator/LAMP/scripts && sudo ./lamp.sh"

