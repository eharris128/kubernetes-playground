#!/bin/bash

# Get the list of deployments in the default namespace
echo "Listing all deployments in the default namespace..."
microk8s kubectl get deployments

# Optionally, list deployments in a specific namespace
# echo "Listing all deployments in a specific namespace..."
# microk8s kubectl get deployments -n <namespace-name>

# Get more detailed information about deployments
echo -e "\nGetting detailed information about deployments..."
microk8s kubectl describe deployments