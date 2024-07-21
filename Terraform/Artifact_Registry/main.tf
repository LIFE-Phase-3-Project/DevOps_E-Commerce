provider "google" {
  project = "e-commerce-life"
  region = "europe-west3"
}

resource "google_artifact_registry_repository" "frontend-repo" {
  location = "europe-west3"
  repository_id = "frontend-repo"
  description = "Repository for Frontend docker images of E-Commerce project"
  format = "DOCKER"
}

resource "google_artifact_registry_repository" "backend-repo" {
  location = "europe-west3"
  repository_id = "backend-repo"
  description = "Repository for Backend docker images of E-Commerce project"
  format = "DOCKER"
}