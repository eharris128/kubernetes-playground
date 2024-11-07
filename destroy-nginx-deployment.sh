#!/bin/bash

# Check if nginx deployment exists
echo "Destroying the Nginx deployment..."
microk8s kubectl delete deployment nginx-deployment
microk8s kubectl delete service nginx-service

# Confirm deletion
echo "Nginx deployment and service have been deleted."
microk8s kubectl get deployments
microk8s kubectl get services
