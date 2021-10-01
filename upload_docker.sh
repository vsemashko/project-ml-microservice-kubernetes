#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
version=$1
if [[ -z "$version" ]]; then
  version=latest
fi
dockerpath=vsemashko/udacity-project-ml:$version

# Step 2:  
# Authenticate & tag
#docker login -u vsemashko
docker tag udacity-project-ml $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath