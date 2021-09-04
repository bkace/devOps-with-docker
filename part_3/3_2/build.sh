#!/bin/sh

set -eu
read -p 'Enter the dockerhub username: ' USERNAME
read -p "Enter the repo url you need to build: " GIT_REPO_URL
read -p "Enter the name of the repo you want to set up for of the dockerhub: " DOCKER_HUB_REPO_NAME
docker build -t $USERNAME/$DOCKER_HUB_REPO_NAME $GIT_REPO_URL

read -sp 'Enter dockerhub password: ' PASSWORD
docker login --username $USERNAME --password $PASSWORD
docker image push bronepeace/$DOCKER_HUB_REPO_NAME

