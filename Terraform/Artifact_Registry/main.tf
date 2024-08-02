provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_artifact_registry_repository" "frontend-repo" {
  location = var.region
  repository_id = var.frontend_repo_name
  description = "Repository for Frontend docker images of E-Commerce project"
  format = "DOCKER"
}

resource "google_artifact_registry_repository" "backend-repo" {
  location = var.region
  repository_id = var.backend_repo_name
  description = "Repository for Backend docker images of E-Commerce project"
  format = "DOCKER"
}