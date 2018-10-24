#!/bin/bash
buildNumber=$1
exists=$(docker service ls|grep learning)
if [ ! "$exists"]; then
 docker service create --name su -p 8888:8080 kusupudiswamy/learning:$buildNumber
 else
 docker service update su --image kusupudiswamy/learning:$buildNumber
 fi
