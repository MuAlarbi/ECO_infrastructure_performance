#!/bin/bash
sudo yum update -y
sudo yum install -y git
cd /home/ssm-user
git clone https://github.com/MuAlarbi/eco_provider_performance2.git

# Download Docker Compose
sudo yum install docker containerd screen -y
sleep 1
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sleep 1
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/libexec/docker/cli-plugins/docker-compose
sleep 1
chmod +x /usr/libexec/docker/cli-plugins/docker-compose
sleep 5
systemctl enable docker.service --now
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker ssm-user

# Build Function
cd eco_provider_performance2/functions/first
docker compose up --build

