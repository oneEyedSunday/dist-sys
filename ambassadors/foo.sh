# K8s Prerequisites

# Install minikube or other options
# https://minikube.sigs.k8s.io/docs/start/

# Start minikube
minikube start

# Load images from local docker instance
minikube cache add redis:6.2.3-alpine

# Load images from local docker instance (after upgrade to minikube v1.21)
minikube image load ganomede/twemproxy

# Set shell to use minikube docker
eval $(minikube docker-env)

# Show Current cluster status
kubectl get po -A

# Minikube Dashboard
minikube dashboard

# Deploy
kubectl create  -f redis-shards.yml

# Changese
kubectl apply -f redis-shards.yml

# Create Service
kubectl create -f redis-service.yml

# Create config map
kubectl create configmap nutcracker --from-file=nutcracker.yml