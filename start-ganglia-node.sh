#!/bin/bash

docker run -d \
    -p 9090:80 \
    -p 8649:8649 \
    -p 8649:8649/udp \
    --name=ganglia \
    --privileged=true \
    -v :/etc/ganglia \
    -v :/var/lib/ganglia \
    -v /etc/localtime:/etc/localtime:ro \
    :latest
