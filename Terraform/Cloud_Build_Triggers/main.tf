# Frontend Branches
resource "google_cloudbuild_trigger" "frontend-main-trigger" {
  project = var.project_id
  name = "frontend-main-trigger"
  location = var.region

  github {
    owner = var.repo_owner
    name = var.frontend_repo_name
    push {
      branch = "^main$"
    }
  }

  approval_config {
     approval_required = true 
  }

  filename = "cloudbuild.yaml"
  service_account = var.service_account_email
}

resource "google_cloudbuild_trigger" "frontend-development-trigger" {
  project = var.project_id
  name = "frontend-development-trigger"
  location = var.region

  github {
    owner = var.repo_owner
    name = var.frontend_repo_name
    push {
      branch = "^development$"
    }
  }

  filename = "cloudbuild.yaml"
  service_account = var.service_account_email
}

# Backend Branches
resource "google_cloudbuild_trigger" "backend-master-trigger" {
  project = var.project_id
  name = "backend-master-trigger"
  location = var.region

  github {
    owner = var.repo_owner
    name = var.backend_repo_name
    push {
      branch = "^master$"
    }
  }

  approval_config {
     approval_required = true 
  }

  filename = "cloudbuild.yaml"
  service_account = var.service_account_email
}