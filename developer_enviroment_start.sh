#!/bin/bash
docker-machine start matcha
eval $(docker-machine env matcha)
cd ../laradock
docker-compose up -d apache2 mysql phpmyadmin
if [[ $1 -eq 1 ]]
then
    docker exec -it matcha_workspace_1 bash
fi