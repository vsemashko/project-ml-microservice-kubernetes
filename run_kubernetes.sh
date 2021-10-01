#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
version=$1
if [[ -z "$version" ]]; then
  version=latest
fi
dockerpath=vsemashko/udacity-project-ml:$version

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath udacity-project-ml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=ready --timeout=180s pod -l app=udacity-project-ml
kubectl port-forward $(kubectl get pods -l=app="udacity-project-ml" -o name) 8055:80