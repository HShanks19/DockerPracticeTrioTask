#!/bin/bash

# install docker
sudo apt-get update
curl https://get.docker.com | sudo bash

sudo usermod -aG docker jenkins
# sudo systemctl restart jenkins in Command Line 

# install docker compose
sudo apt update
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#login to docker
echo $DOCKER_PASSWORD | docker login --username hollyshanks --password-stdin
