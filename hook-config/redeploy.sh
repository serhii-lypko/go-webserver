#!/bin/bash

echo 'Running web-server redeploy hook'

docker pull serhiilk/go-webserver:latest
docker stop go-webserver || true
docker rm go-webserver || true
docker run -d --name go-webserver -p 8080:8080 serhiilk/go-webserver:latest

echo 'Web-server redeploy completed'