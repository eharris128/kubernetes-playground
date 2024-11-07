#!/bin/bash

# Check if the pod name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <pod-name>"
  exit 1
fi

# Describe the pod using kubectl
microk8s kubectl describe pod "$1"
