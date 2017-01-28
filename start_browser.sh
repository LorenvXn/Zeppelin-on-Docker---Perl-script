#!/bin/bash

IP=`docker inspect $(docker ps  | sed -e 's/^\(.\{41\}\).*/\1/' | awk '{if($2 == "ledzeppelin:latest") print $1}') \
 | grep IPAddress | awk 'NR==1 {print $NF}' | cut -f1 -d ','  \
 | sed 's/["]//g'`

echo $IP

python -m webbrowser http://$IP:8080

