#! /bin/bash

echo "> docker compose 재실행"

# pull image
docker pull ghcr.io/dohyeon-han/github-actions-test:latest

# docker down
docker compose -f docker-compose.prod.yml down --rmi all --remove-orphans

# docker up
docker compose -f docker-compose.prod.yml up -d --build
