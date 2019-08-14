#!/bin/bash

docker run \
  --name myjenkinsci \
  -u root \
  -d \
  -p 8082:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  myjenkinsci/blueocean
