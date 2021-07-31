#!/bin/bash

DOCKER_REPO=$bamboo_docker_repo


#create env if not present
/usr/local/bin/kubectl create ns test

kubectl run hello-proj --image=jebinluke89/express-mongoose:latestj --port=8080 -n test
kubectl expose deployment hello-proj --type=LoadBalancer --port=8080 -n test


