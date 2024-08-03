variable "project_id" {
  description = "The project ID to deploy to"
  type = string
}

variable "location" {
  description = "The region to deploy to"
  type = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type = string
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type = string
}

variable "service_account_email" {
  description = "The service account email to be used by GKE"
  type = string
}