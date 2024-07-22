variable "project" {
  description = "The project ID to deploy to"
  type = string
}

variable "region" {
  description = "The region to deploy to"
  type = string
}

variable "service_account_email" {
  description = "Service account email to be used by the Cloud Build trigger"
  type = string
}

variable "frontend_repo_name" {
  description = "The name of the repository for the Frontend"
  type = string
}

variable "backend_repo_name" {
  description = "The name of the repository for the Backend"
  type = string
}