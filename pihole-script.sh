#! /bin/bash

#working <- at least reporting instances to console when doorbell pressed
#tail -F /var/log/pihole.log | egrep "alarm"
#echo "alarm"

tail -F /var/log/pihole.log | egrep "alarm"
echo "alarm, do curl -X POST http://HASS-IP:PORT/api/webhook/WEBHOOKID"
