variable "namespace" {
  description = "Namespace Kubernetes"
  type        = string
  default     = "fil-rouge-devops"
}

variable "storage_size" {
  description = "Taille du volume SQLite"
  type        = string
  default     = "1Gi"
}