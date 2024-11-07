# Variables
APPLY_SCRIPT = apply-alpine-pod.sh
DESTROY_SCRIPT = destroy-alpine-pod.sh
GET_PODS_SCRIPT = get-pods.sh
CREATE_NGINX_SCRIPT = create-nginx-deployment.sh
DESTROY_NGINX_SCRIPT = destroy-nginx-deployment.sh
GET_DEPLOYMENTS_SCRIPT = get-deployments.sh
CREATE_ALPINE_SCRIPT = create-alpine-deployment.sh
EXPOSE_ALPINE_SCRIPT = expose-alpine-deployment.sh
DESTROY_ALPINE_SCRIPT = destroy-alpine-deployment.sh
DESCRIBE_POD_SCRIPT = describe-pod.sh
DELETE_ALL_DEPLOYMENTS_SCRIPT = delete-all-deployments.sh
GET_SERVICES_SCRIPT = get-services.sh

# Store the help text in a variable
HELP_TEXT = \
"Welcome to the Kubernetes deployment Makefile!\n" \
"Available targets:\n" \
"  create-alpine-deployment: Create the Alpine deployment.\n" \
"  expose-alpine-deployment: Expose the Alpine deployment as a service.\n" \
"  destroy-alpine-deployment: Destroy the Alpine deployment.\n" \
"  get-pods: Get a list of all pods in the cluster.\n" \
"  create-nginx-deployment: Create the Nginx deployment.\n" \
"  destroy-nginx-deployment: Destroy the Nginx deployment.\n" \
"  get-deployments: Get a list of all deployments in the cluster.\n" \
"  describe-pod <pod-name>: Describe the details of a specific pod.\n" \
"  delete-all-deployments: Delete all deployments in the cluster.\n" \
"  get-services: Get a list of all services in the cluster.\n"

# Default target (this is the target that gets run if no other target is specified)
.PHONY: default
default:
	@echo -e "$(HELP_TEXT)"

# Ensure the scripts are executable
.PHONY: ensure-executable
ensure-executable:
	chmod +x $(APPLY_SCRIPT) $(DESTROY_SCRIPT) $(GET_PODS_SCRIPT) $(CREATE_NGINX_SCRIPT) $(DESTROY_NGINX_SCRIPT) $(GET_DEPLOYMENTS_SCRIPT) $(CREATE_ALPINE_SCRIPT) $(EXPOSE_ALPINE_SCRIPT) $(DESTROY_ALPINE_SCRIPT) $(DESCRIBE_POD_SCRIPT) $(DELETE_ALL_DEPLOYMENTS_SCRIPT) $(GET_SERVICES_SCRIPT)

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

# Target to create the Alpine deployment
.PHONY: create-alpine-deployment
create-alpine-deployment: ensure-executable
	./$(CREATE_ALPINE_SCRIPT)

# Target to expose the Alpine deployment
.PHONY: expose-alpine-deployment
expose-alpine-deployment: ensure-executable
	./$(EXPOSE_ALPINE_SCRIPT)

# Target to destroy the Alpine deployment
.PHONY: destroy-alpine-deployment
destroy-alpine-deployment: ensure-executable
	./$(DESTROY_ALPINE_SCRIPT)

# Target to describe a pod (takes pod name as an argument)
.PHONY: describe-pod
describe-pod: ensure-executable
	@echo "Describing pod: $(POD_NAME)"
	./$(DESCRIBE_POD_SCRIPT) $(POD_NAME)

# Target to delete all deployments
.PHONY: delete-all-deployments
delete-all-deployments: ensure-executable
	./$(DELETE_ALL_DEPLOYMENTS_SCRIPT)

# Target to get the list of services
.PHONY: get-services
get-services: ensure-executable
	./$(GET_SERVICES_SCRIPT)
