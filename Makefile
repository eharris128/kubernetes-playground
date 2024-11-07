# Variables
APPLY_SCRIPT = apply-alpine-pod.sh
DESTROY_SCRIPT = destroy-alpine-pod.sh
GET_PODS_SCRIPT = get-pods.sh
CREATE_NGINX_SCRIPT = create-nginx-deployment.sh
DESTROY_NGINX_SCRIPT = destroy-nginx-deployment.sh
GET_DEPLOYMENTS_SCRIPT = get-deployments.sh

# Ensure the scripts are executable
.PHONY: ensure-executable
ensure-executable:
	chmod +x $(APPLY_SCRIPT) $(DESTROY_SCRIPT) $(GET_PODS_SCRIPT) $(CREATE_NGINX_SCRIPT) $(DESTROY_NGINX_SCRIPT) $(GET_DEPLOYMENTS_SCRIPT)

# Target to apply the Alpine pod configuration
.PHONY: apply-alpine-pod
apply-alpine-pod: ensure-executable
	./$(APPLY_SCRIPT)

# Target to destroy (delete) the Alpine pod
.PHONY: destroy-alpine-pod
destroy-alpine-pod: ensure-executable
	./$(DESTROY_SCRIPT)

# Target to get the list of pods
.PHONY: get-pods
get-pods: ensure-executable
	./$(GET_PODS_SCRIPT)

# Target to create the Nginx deployment
.PHONY: create-nginx-deployment
create-nginx-deployment: ensure-executable
	./$(CREATE_NGINX_SCRIPT)

# Target to destroy the Nginx deployment
.PHONY: destroy-nginx-deployment
destroy-nginx-deployment: ensure-executable
	./$(DESTROY_NGINX_SCRIPT)

# Target to get the list of deployments
.PHONY: get-deployments
get-deployments: ensure-executable
	./$(GET_DEPLOYMENTS_SCRIPT)


# Optional clean target to delete the pod (for testing)
.PHONY: clean
clean: destroy-alpine-pod
