provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
} 

resource "kubernetes_namespace" "clickhouse" {
  metadata {
    name = "clickhouse"
  }
}

resource "helm_release" "altinity_operator" {
  name       = "altinity-operator"
  repository = "https://altinity.github.io/clickhouse-operator"
  chart      = "altinity-clickhouse-operator"
  namespace  = "kube-system"
  version    = "0.23.6"
}

resource "kubernetes_manifest" "clickhouse_installation" {
  depends_on = [helm_release.altinity_operator]
  manifest = {
    "apiVersion" = "clickhouse.altinity.com/v1"
    "kind" = "ClickHouseInstallation"
    "metadata" = {
      "name" = "simple"
      "namespace" = kubernetes_namespace.clickhouse.metadata.0.name
    }
    "spec" = {
      "configuration" = {
        "clusters" = [
          {name = "simple"}
        ]
      }
    }
  }
}
