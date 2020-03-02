#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=flasksklearn .


dockerpath="jimmyjoy850812/first-docker-project"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag project $dockerpath

# Push Image
docker image push $dockerpath 
