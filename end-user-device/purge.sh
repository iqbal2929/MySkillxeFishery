#!/bin/bash

kubectl delete -f mysql-secret.yaml
kubectl delete -f fleet-database.yaml

helm uninstall fleet 
