#!/bin/bash
docker-compose build
sleep 20

docker push jasonsinclair95/goup3:frontend
sleep 20

docker push jasonsinclair95/coolgroup:backend
sleep 20