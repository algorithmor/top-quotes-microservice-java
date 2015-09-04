#!/bin/bash
set -e

sudo mkdir /opt/top-quotes-microservice-java
sudo tar -xvf /opt/top-quotes-microservice-java.tar -C /opt/top-quotes-microservice-java
sudo mv /opt/top-quotes-microservice-java/top-quotes-microservice-java*/* /opt/top-quotes-microservice-java

sudo chown -R root:root /opt/top-quotes-microservice-java
sudo chmod -R 644 /opt/top-quotes-microservice-java

sudo chown -R root:root /opt/top-quotes-microservice-java
sudo chmod 755 /opt/top-quotes-microservice-java/bin/top-quotes-microservice-java

sudo mkdir /var/log/top-quotes-microservice-java

sudo bash -c "echo tags:top_quotes_microservice_java >> /etc/dd-agent/datadog.conf"
