#!/bin/bash
docker-compose build
sleep 20

docker push jasonsinclair95/group-project:frontend
sleep 20

docker push jasonsinclair95/group-project:backend
sleep 20