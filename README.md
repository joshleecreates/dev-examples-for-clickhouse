# Altinity Development Examples for ClickHouse®

Note: These examples are provided for development and demonstration purposes. For production-ready deployments, please see blueprints-for-clickhouse

Examples are provided for various enviroments:

## Docker

- [docker-compose](https://github.com/joshleecreates/clickhouse-examples/tree/main/docker)

## Kubernetes

### [Terraform/OpenTofu](./k8s/tf/README.md)

Uses Terraform/OpenTofu to create a Kubernetes Cluster on AWS with the Altinity Operator and ClickHouse Cluster installed. Also includes Keeper.

### [Helm](./k8s/helm/README.md)

Uses Helm to deploy the Altinity Operator and create a ClickHouse Cluster. Optionally includes Keeper.

### [ArgoCD](./k8s/argo/README.md)

Includes a number of example ClickHouse deployments using Helm templates with Argo. Also includes a Terraform/OpenTofu module to bootstrap a new cluster with ArgoCD.

## Legal

Altinity®, Altinity.Cloud®, and Altinity Stable® are registered trademarks of Altinity, Inc. ClickHouse® is a registered trademark of ClickHouse, Inc.; Altinity is not affiliated with or associated with ClickHouse, Inc.
