#!/bin/bash

source docker-vars.sh

sudo docker rm $APP
sudo docker run -it \
    --name $APP \
    -p 62032:62032/udp \
      -v /srv/dmr/dmrlink.cfg:/opt/DMRlink/dmrlink.cfg \
      -v /srv/dmr/confbridge_rules.py:/opt/DMRlink/confbridge_rules.py \
      -v /srv/dmr/playback_config.py:/opt/DMRlink/playback_config.py \
      -v /srv/dmr/sub_acl.py:/opt/DMRlink/sub_acl.py \
    $NAME /bin/bash
