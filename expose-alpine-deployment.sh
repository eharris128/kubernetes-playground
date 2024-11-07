#!/bin/bash

# Expose the Alpine deployment as a service
echo "Exposing the Alpine deployment..."
microk8s kubectl expose deployment alpine-deployment --port=80 --target-port=80 --type=NodePort

# Confirm exposure
echo "Alpine deployment has been exposed."
microk8s kubectl get services
