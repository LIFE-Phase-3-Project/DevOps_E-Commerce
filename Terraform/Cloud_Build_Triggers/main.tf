resource "google_cloudbuild_trigger" "frontend-development-trigger" {
  project = var.project
  name = "frontend-development-trigger"
  location = var.region

  github {
    owner = "donzzi"
    name = var.frontend_repo_name
    push {
      branch = "^development$"
    }
  }

  filename = "cloudbuild.yaml"
  service_account = var.service_account_email
}

resource "google_cloudbuild_trigger" "backend-master-trigger" {
  project = var.project
  name = "backend-master-trigger"
  location = var.region

  github {
    owner = "donzzi"
    name = var.backend_repo_name
    push {
      branch = "^master$"
    }
  }

  filename = "cloudbuild.yaml"
  service_account = var.service_account_email
}