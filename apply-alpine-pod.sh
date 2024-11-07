#!/bin/bash

# Check if alpine-pod.yaml exists
if [[ ! -f "alpine-pod.yaml" ]]; then
  echo "Error: alpine-pod.yaml file not found in the current directory."
  exit 1
fi

# Apply the alpine-pod.yaml configuration
echo "Applying alpine-pod.yaml..."
microk8s kubectl apply -f alpine-pod.yaml

# Check the status of the pod
echo "Checking the status of the alpine pod..."
microk8s kubectl get pod alpine-pod
