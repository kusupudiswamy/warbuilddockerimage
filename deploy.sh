#!/bin/bash
buildNumber=$1
exists=$(docker service ls|grep learn)
if [ ! "$exists"]; then
 docker service create --name su -p 8888:8080 kusupudiswamy/learn:$buildNumber
 else
 docker service update su --image kusupudiswamy/learn:$buildNumber
 fi
