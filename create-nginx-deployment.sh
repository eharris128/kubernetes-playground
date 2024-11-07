#!/bin/bash

# Check if nginx-deployment.yaml exists
if [[ ! -f "nginx-deployment.yaml" ]]; then
  echo "Error: nginx-deployment.yaml file not found in the current directory."
  exit 1
fi

# Apply the nginx-deployment.yaml configuration
echo "Creating the Nginx deployment..."
microk8s kubectl apply -f nginx-deployment.yaml

# Check the status of the deployment
echo "Checking the status of the Nginx deployment..."
microk8s kubectl get deployments
microk8s kubectl get pods
