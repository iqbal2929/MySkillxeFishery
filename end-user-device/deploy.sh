#!/bin/bash

kubectl apply -f kubernetes/mysql-secret.yaml
kubectl apply -f kubernetes/fleet-database.yaml

helm upgrade --install fleet fleet \
  --namespace platform--security \
  --repo https://fleetdm.github.io/fleet/charts \
  --values helm/values.yaml
