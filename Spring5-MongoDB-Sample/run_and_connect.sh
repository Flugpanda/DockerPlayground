 #!/bin/bash
 
 # get und run the docker image with the mapped port 27017 to the host
docker run --name mongodb -p 27017:27017 -d mongo
 
 # download sample application
wget https://github.com/springframeworkguru/spring-boot-mongodb/archive/master.zip

# unzip it 
unzip master.zip

# change directory to the sping boot application
cd spring-boot-mongodb-master/

# run the application
mvn spring-boot:run

# open firefox and show the website
firefox --new-instance --browser 127.0.0.1:8080
