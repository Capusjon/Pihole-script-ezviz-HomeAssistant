# Pihole-script-ezviz-HomeAssistant
Pihole script to watch for dns querys from EZVIZ doorbell when triggering pushbutton to use in HomeAssistant


Script is a bit dirty, it works only one time therefore the script restarts itself after every doorbell press to make sure it catches the next alarm.
Need to make this more elegant but for now it works.

steps to do:
prerequisites:
- have pihole docker installed
- have access to the config map of your pihole

- Create a folder i.e. Script inside the config folder of your pihole
- Place this script inside this folder
- go inside the docker via terminal with: docker exec -it Pihole /bin/bash
  - CD /etc/pihole/Script
  - chmod +x scriptname.sh
- .............. to be continued
