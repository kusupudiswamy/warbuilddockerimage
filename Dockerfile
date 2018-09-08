#!/bin/bash
FROM tomcat:latest
MAINTAINER "swamy@gmail.com"
WORKDIR /opt/extract
copy swamy.war /usr/local/tomcat/webapps
EXPOSE 80:80
