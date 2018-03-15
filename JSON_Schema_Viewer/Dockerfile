FROM debian:jessie

# update the system
RUN apt-get update -y \
    && apt-get upgrade -y
    
#install packages
RUN apt-get install -y git ruby curl python

# download node-js setup
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -

#install node-js
RUN apt-get install -y nodejs

# install addition throuch npm
RUN npm install -g node-gyp bower grunt

RUN npm install grunt-contrib-sass --save-dev

# add user
RUN groupadd -r jsonbob \
    && useradd -ms /bin/bash --no-log-init -r -g jsonbob jsonbob
   
# change user 
USER jsonbob

# change working directory
WORKDIR /home/jsonbob    

# clone repository and change directory
RUN git clone https://github.com/jlblcc/json-schema-viewer.git

# change working directory
WORKDIR /home/jsonbob/json-schema-viewer

# Install dependencies via Bower
RUN bower install

# Install dependencies via NPM:
RUN npm install

# Build project via Grunt
RUN grunt --force prod

# start the application
ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "9001"]

# expose the port for the app
EXPOSE 9001
