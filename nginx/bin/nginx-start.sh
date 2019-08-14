#!/bin/bash
#https://www.digitalocean.com/community/tutorials/how-to-run-nginx-in-a-docker-container-on-ubuntu-14-04

docker run --name mywebserver -p 80:80 \
	-v ~/Desktop/docker/nginx/html:/usr/share/nginx/html \
	-v ~/Desktop/docker/nginx/html/darmsec.net:/var/www/darmsec.net/html \
	-v ~/Desktop/docker/nginx/html/api.darmsec.net:/var/www/api.darmsec.net/html \
	-v ~/Desktop/docker/nginx/html/grafana.darmsec.net:/var/www/grafana.darmsec.net/html \
	-v ~/Desktop/docker/nginx/conf/darm.conf:/etc/nginx/conf.d/darm.conf \
	-v ~/Desktop/docker/nginx/conf/api.conf:/etc/nginx/conf.d/api.conf \
        -v ~/Desktop/docker/nginx/conf/grafana.conf:/etc/nginx/conf.d/grafana.conf \
	-d mywebserver
