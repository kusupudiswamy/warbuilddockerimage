#! /bin/bash
sudo cp Dockerfile /opt/swamy
ls /opt/swamy
sudo cd /opt/swamy
buildNumber=$1
pwd
sudo docker build -t learn:$buildNumber /opt/swamy
sudo docker tag learn:buildNumber kusupudiswamy/learn:$buildNumber
sudo docker push kusupudiswamy/learn:$buildNumber
