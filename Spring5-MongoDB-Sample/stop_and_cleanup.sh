#!/bin/bash

# stop the docker container
docker stop mongodb

# delete the container
docker rm $(docker ps -aqf "name=mongodb")

# stop all java
killall java

# delete zip file
rm master.zip

# delete spring-boot app
rm -r spring-boot-mongodb-master
