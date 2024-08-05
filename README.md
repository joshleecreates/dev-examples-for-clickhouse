# Altinity Development Examples for ClickHouse

Note: These examples are provided for development and demonstration purposes. For production-ready deployments, please see blueprints-for-clickhouse

Examples are provided for various enviroments:

## Docker

- [./docker/README.md](docker-compose)

## Kubernetes

### [./k8s/tf/README.md](Terraform/OpenTofu)

Uses Terraform/OpenTofu to create a Kubernetes Cluster on AWS with the Altinity Operator and ClickHouse Cluster installed. Also includes Keeper.

### [./k8s/helm/README.md](Helm)

Uses Helm to deploy the Altinity Operator and create a ClickHouse Cluster. Optionally includes Keeper.

### [./k8s/argo/README.md](ArgoCD)

Includes a number of example ClickHouse deployments using Helm templates with Argo. Also includes a Terraform/OpenTofu module to bootstrap a new cluster with ArgoCD.

