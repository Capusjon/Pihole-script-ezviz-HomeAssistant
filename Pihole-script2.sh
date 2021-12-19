#! bin/bash

tail -F /var/log/pihole.log | egreap alarm | while IFS= read -r line; do curl -X POST IP:PORT/api/webhook/WEBHOOKID 
done
