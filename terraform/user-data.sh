#!/bin/bash

sudo apt update -y
sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

sudo docker pull libin07/my-strapi-app:${IMAGE_TAG}


sudo docker run -d -p 1337:1337 libin07/my-strapi-app:${IMAGE_TAG}
