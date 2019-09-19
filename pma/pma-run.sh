#!/bin/bash

docker run --name mysql-admin \
           --net=mysql-network \
	   --env-file=/Users/darm/Desktop/docker/mysql/sqlcredentials.list \
           -p 8081:80 \
           -d myphpmyadmin
