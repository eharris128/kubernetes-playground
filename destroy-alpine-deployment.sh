#!/bin/bash

# Delete the Alpine deployment and service
echo "Destroying the Alpine deployment and service..."
microk8s kubectl delete deployment alpine-deployment
microk8s kubectl delete service alpine-service

# Confirm deletion
echo "Alpine deployment and service have been deleted."
microk8s kubectl get deployments
microk8s kubectl get services
