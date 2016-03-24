#!/bin/bash
#clone template machine
vboxmanage clonevm LAMP_Template --snapshot Clear --name LAMP_1 --register
#start new machine
vboxmanage startvm LAMP_1 --type headless
#clone github repo & start lamp script
vboxmanage guestcontrol LAMP_1 run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator && git clone https://github.com/PilotRW/LAMP && cd LAMP && sudo ./lamp.sh"