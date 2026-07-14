output "namespace" {
  value = kubernetes_namespace.devops.metadata[0].name
}

output "sqlite_pvc" {
  value = kubernetes_persistent_volume_claim.sqlite.metadata[0].name
}