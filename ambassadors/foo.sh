# K8s Prerequisites

# Install minikube or other options
# https://minikube.sigs.k8s.io/docs/start/

# Start minikube
minikube start

# Load images from local docker instance
minikube cache add redis:6.2.3-alpine

# Show Current cluster status
kubectl get po -A

# Minikube Dashboard
minikube dashboard

# Deploy
kubectl create  -f redis-shards.yml

# Changese
kubectl apply -f redis-shards.yml