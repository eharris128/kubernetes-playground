#!/bin/bash

# Get the list of services in the default namespace
echo "Listing all services in the default namespace..."
microk8s kubectl get services

# Optionally, list services in all namespaces
# echo -e "\nListing all services in all namespaces..."
# microk8s kubectl get services --all-namespaces

# Get more detailed information about services
echo -e "\nGetting detailed information about services..."
microk8s kubectl describe services