#!/bin/bash

docker run --name bind -d --restart=always \
  --publish 53:53/tcp --publish 53:53/udp --publish 10000:10000/tcp \
  -v ~/Desktop/docker/bind/srv/docker/bind:/data \
  sameersbn/bind
