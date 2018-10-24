#! /bin/bash
sudo cp Dockerfile /opt/swamy
ls /opt/swamy
sudo cd /opt/swamy
buildNumber=$1
pwd
sudo docker build -t learning:$buildNumber /opt/swamy
sudo docker tag learning:$buildNumber kusupudiswamy/learning:$buildNumber
sudo docker push kusupudiswamy/learning:$buildNumber
