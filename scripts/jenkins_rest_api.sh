vboxmanage guestcontrol "LAMP_1" run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator && git clone https://github.com/PilotRW/LAMP.git"
vboxmanage guestcontrol "LAMP_1" run --username administrator --password 123456 -- /bin/bash -c "cd /home/administrator/LAMP/scripts && sudo ./lamp.sh"

