#! /bin/bash

echo "> docker container down"

# docker down
docker-compose -f docker-compose.prod.yml down --remove-orphans

echo "> docker container up"

# docker up
docker-compose -f docker-compose.prod.yml up -d --build
