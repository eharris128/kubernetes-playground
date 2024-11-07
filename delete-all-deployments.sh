#!/bin/bash

echo "Deleting all deployments..."
microk8s kubectl delete deployments --all

echo "Verifying deletion..."
microk8s kubectl get deployments

echo "All deployments have been deleted."