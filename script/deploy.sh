#! /bin/bash

echo "> image pull"

# pull image
docker pull ghcr.io/dohyeon-han/github-actions-test:latest

echo "> docker container down"

# docker down
docker-compose -f docker-compose.prod.yml down --remove-orphans

echo "> docker container up"

# docker up
docker-compose -f docker-compose.prod.yml up -d --build
