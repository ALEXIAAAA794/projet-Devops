resource "kubernetes_namespace" "devops" {

  metadata {
    name = var.namespace
  }

}

resource "kubernetes_persistent_volume_claim" "sqlite" {

  metadata {
    name      = "sqlite-pvc"
    namespace = kubernetes_namespace.devops.metadata[0].name
  }

  spec {

    access_modes = [
      "ReadWriteOnce"
    ]

    resources {

      requests = {
        storage = var.storage_size
      }

    }

  }

}