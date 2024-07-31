#!/bin/bash

kubectl apply -f mysql-secret.yaml
kubectl apply -f fleet-database.yaml

helm upgrade --install fleet fleet \
  --namespace platform--security \
  --repo https://fleetdm.github.io/fleet/charts \
  --values values.yaml
