#!/bin/bash

docker run --rm --log-driver solarwinds/papertrail-plugin --log-opt papertrail-url=logs.papertrailapp.com:46517 \
    --log-opt papertrail-token=isi_token_disini nginx/buster bash -c 'while true; do date +%s%N | sha256sum | base64 | head -c 32 ; echo " - Hello world"; sleep 10; done'
