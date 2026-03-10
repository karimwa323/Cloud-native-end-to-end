#!/bin/bash

sudo apt update -y

# install java
sudo apt install openjdk-17-jdk -y

# add jenkins key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

# add repo
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y

# install jenkins
sudo apt install jenkins -y
  
# start service
sudo systemctl enable jenkins
sudo systemctl start jenkins

apt update -y
apt install openssh-server -y

systemctl enable ssh
systemctl start ssh