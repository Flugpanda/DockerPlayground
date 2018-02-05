#!/bin/bash

docker run --name dev-mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v $(pwd)/db-storage:/var/lib/mysql -p3306:3306 -d mariadb
