FROM centos:centos7

# update the system
RUN yum -y update

#install jvm
RUN yum -y install java-1.8.0-openjdk

# mount volume
VOLUME /tmp

# Add the spring project
ADD spring5recipesWebApp-0.0.1-SNAPSHOT.jar recipeApp.jar

# workaround
# update the date of the static files, for the case that they get cashed
RUN sh -c 'touch /recipeApp.jar'

# comand that the docker container shall run 
ENTRYPOINT ["java","-Djava.sercurity.edg=file:/dev/./urandom/", "-jar", "/recipeApp.jar"]

# expose the port for the app
EXPOSE 8242
