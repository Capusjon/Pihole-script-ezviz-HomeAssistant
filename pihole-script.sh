#! /bin/bash

tail -F /var/log/pihole.log | awk '/alarm/ { print alarm | "curl -X POST http://HASSIP:PORT/api/webhook/WEBHOOKID && exec /PATH/TO/SCRIPT/SCRIPTNAME.sh" }'
