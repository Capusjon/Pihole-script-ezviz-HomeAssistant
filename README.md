# Pihole-script-ezviz-HomeAssistant
Pihole script to watch for dns querys from EZVIZ doorbell when triggering pushbutton to use in HomeAssistant


Script is a bit dirty, it works only one time therefore the script restarts itself after every doorbell press to make sure it catches the next alarm.
Need to make this more elegant but for now it works. (Only ezviz.sh works, the other is a work in progress)

steps to do:
prerequisites:
- have pihole docker installed
- have access to the config map of your pihole

- Create a folder i.e. Script inside the config folder of your pihole
- Place this script inside this folder
- go inside the docker via terminal with: docker exec -it Pihole /bin/bash
  - CD /etc/pihole/Script #or whatever you folder is named
  - chmod +x scriptname.sh # to make the script executable
  - CD ~ #to return to home folder
  - /etc/pihole/Script/ezviz.sh #to run the script

Whenever the Pihole docker restarts, you need to run this script again. You can do it in 2 ways;
- bash in to docker as described above and then run #/etc/pihole/Script/ezviz.sh
- connect to your docker host and run #docker exec -it Pihole /etc/pihole/Script/ezviz.sh

to-do:
- create a better script.. Script only works once therefore after every trigger it restarts itself to keep working.
- need a way to make this script run at the start of the docker container
- need a way to automatically install and run this script whent the container updates.


