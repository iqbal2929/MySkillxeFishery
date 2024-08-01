#!/bin/bash

kubectl delete -f kubernetes/mysql-secret.yaml
kubectl delete -f kubernetes/fleet-database.yaml

helm uninstall fleet 
