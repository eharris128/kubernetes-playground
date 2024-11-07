#!/bin/bash

# Apply the Alpine deployment YAML file
echo "Creating the Alpine deployment..."
microk8s kubectl apply -f alpine-deployment.yaml

# Confirm creation
echo "Alpine deployment has been created."
microk8s kubectl get deployments
microk8s kubectl get pods
