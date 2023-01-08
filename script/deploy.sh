#! /bin/bash

echo "> run MySQL, redis and nginx container"
docker-compose -f docker-compose.prod.yml up mysql redis nginx -d --build

echo "> docker spring container down"
docker-compose -f docker-compose.prod.yml rm -s -v -f spring1

echo "> docker image remove"
docker rmi ghcr.io/dohyeon-han/github-actions-test:latest

echo "> docker spring container up"
docker-compose -f docker-compose.prod.yml up spring1 -d --build
