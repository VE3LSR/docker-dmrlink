#!/bin/bash

source docker-vars.sh

SAMPLES='confbridge_rules_SAMPLE.py dmrlink_SAMPLE.cfg playback_config_SAMPLE.py sub_acl_SAMPLE.py'

for SAMPLE in $SAMPLES; do
    if [ ! -f $SAMPLE ]; then
        wget https://raw.githubusercontent.com/n0mjs710/DMRlink/IPSC_Bridge/$SAMPLE
    fi
done

sudo docker build -t $NAME .


