#!/bin/bash

# Delete the Alpine pod and service
echo "Destroying the alpine pod and service..."
microk8s kubectl delete -f alpine-pod-nodeport.yaml || echo "Resources not found or already deleted."

# Check the status after deletion
echo "Checking the status after deletion..."
microk8s kubectl get pod alpine-pod-nodeport || echo "Alpine pod no longer exists."
microk8s kubectl get service alpine-nodeport-service || echo "Alpine NodePort service no longer exists."