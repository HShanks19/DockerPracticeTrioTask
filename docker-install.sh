#!/bin/bash

sudo apt-get update
curl https://get.docker.com | sudo bash

sudo usermod -aG docker jenkins

sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-\$(uname -s)-\$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo $DOCKER_PASSWORD | docker login --username hollyshanks --password-stdin
