#!/bin/bash

# Delete the Alpine pod
echo "Destroying the alpine pod..."
microk8s kubectl delete pod alpine-pod || echo "Pod not found or already deleted."

# Check the status after deletion
echo "Checking the status of the alpine pod..."
microk8s kubectl get pod alpine-pod || echo "Alpine pod no longer exists."
