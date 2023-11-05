#!/bin/bash

echo "Stoping if started and removing if exists..."
docker stop tomcat-9
docker rm tomcat-9

# Cambiar sólo esta ruta:
RUTA=/home/ubuntu/experiment/the-bad-way

echo "Starting new container..."
docker run -d \
-p 80:8080 \
--name=tomcat-9 \
-v $RUTA/webapp:/usr/local/tomcat/webapps/webapp \
tomcat:9.0.1-jre8-alpine \
catalina.sh run

echo "tomcat up and running !!!"
echo "please, goto: http://localhost/webapp/lista.jsp"
