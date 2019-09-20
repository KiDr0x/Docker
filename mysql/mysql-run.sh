#!/bin/bash

docker run --name mysql-server \
           --net=mysql-network \
           -p 3306:3306 \
	   --env-file=sqlcredentials.list \
           -v $(pwd)/database:/var/lib/mysql \
           -d mysql:5.7.24  > /dev/null
