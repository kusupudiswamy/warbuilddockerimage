#!/bin/bash
FROM tomcat:latest
MAINTAINER "swamy@gmail.com"
WORKDIR /opt/swamy
copy hello.war /usr/local/tomcat/webapps
EXPOSE 80:80
