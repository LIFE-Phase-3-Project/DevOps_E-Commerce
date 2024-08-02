variable "project_id" {
  description = "The project ID to deploy to"
  type = string
}

variable "region" {
  description = "The region to deploy to"
  type = string
}

variable "frontend_repo_name" {
  description = "The name of the image repository for the Frontend"
  type = string
}

variable "backend_repo_name" {
  description = "The name of the image repository for the Frontend"
  type = string
}