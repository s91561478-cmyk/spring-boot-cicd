#!/bin/bash

cd /home/ubuntu/naver-main-web-server
sudo fuser -k -n tcp 8080 || true
nohup java -jar spring-boot-cicd.jar > ./output.log 2>&1 &