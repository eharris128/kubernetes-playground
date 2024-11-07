#!/bin/bash

# Get the list of pods in the default namespace
echo "Listing all pods in the default namespace..."
microk8s kubectl get pods

# Optionally, list pods in a specific namespace
# echo "Listing all pods in a specific namespace..."
# microk8s kubectl get pods -n <namespace-name>
