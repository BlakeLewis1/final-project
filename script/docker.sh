#!/bin/bash
. ~/.bashrc
sudo apt update -y
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4
sudo apt-get install default-jdk
sudo apt-get remove docker docker-engine docker.io -y
sudo apt-get purge containderd.io docker.io
sudo apt-get install containerd.io
sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo usermod -aG docker $USER