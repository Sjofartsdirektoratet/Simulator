# Kubernetes Manifest for Fuseki Server

This includes manifests used for deploying a Fuseki server to kubernetes with
datasets from this repository.

The manifest is not meant to be applied locally. Use docker-compose instead 😊.
It includes some values which should be substituted from environment variables
during deployment, and also requires the cluster to access secrets from azure
key-vault.
