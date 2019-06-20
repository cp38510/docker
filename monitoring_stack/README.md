# Prometheus-alertmanager-grafana stack

## Install and start stack

- Install Docker and Docker-compose
```
git clone https://github.com/cp38510/docker.git
cd monitoring_stack
bash init.sh
```

- Set Data source in grafana settings menu 

- Add https://grafana.com/dashboards/159 and https://grafana.com/dashboards/893 in grafana dashboards

- Set server's IP-address in config Prometheus:
```
vi prometheus/prometheus.yml
```

- Set alert rules:
```
vi prometheus/alert.rules
```

- Set vars in Alertmanager config:
```
vi alertmanager/alertmanager.yml
```

- Set domain's in Nginx config:
```
vi ./nginx_no_ssl.conf
```

- Set login and password for admin Grafana:
```
vi ./docker-compose.yml
```

- START monitoring stack:
```
docker-compose up -d
```


## Features for next release

- Add influxDB
- Change settings for compose
- Add firewall
