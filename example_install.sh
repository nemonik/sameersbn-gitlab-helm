#!/bin/bash

helm uninstall gitlab -n gitlab | true
while true; do
    output=$(kubectl get pvc -n gitlab 2>&1 >/dev/null)
    if [[ $output == *"No resources found."* ]]; then
        break
    fi
    sleep 5
done
kubectl create namespace gitlab | true
helm install -f example_values.yaml --namespace gitlab gitlab .
kubectl apply -f gitlab-ingress.yaml | true
