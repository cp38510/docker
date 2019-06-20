#!/bin/bash
apt update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y


curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)"

chmod +x /usr/local/bin/docker-compose



#https://rtfm.co.ua/prometheus-zapusk-servera-s-alertmanager-cadvisor-i-grafana/
#https://habr.com/ru/company/southbridge/blog/327670/
#https://habr.com/ru/company/southbridge/blog/327670/
#https://habr.com/ru/post/441136/




mkdir -p ./{prometheus-server,grafana}
chown 65534:65534 -R ./prometheus-server
chown 472:472 -R ./grafana



#-add http://35.228.15.181:9090 in datasource grafana
#-add https://grafana.com/dashboards/159 in grafana
#-add https://grafana.com/dashboards/893 in grafana
