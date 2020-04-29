#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="rsureshk/awsml"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run awsml --image=rsureshk/awsml --port=80
kubectl run awsml --image=$dockerpath
#kubectl run awsml --image=$dockerpath awsml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment awsml --type=LoadBalancer --port=8000 --target-port=80
#kubectl port-forward deployment/awsml 8000:80
#sleep 60
kubectl port-forward pods/awsml 8000:80


