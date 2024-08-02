provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_storage_bucket" "image_bucket" {
 name = var.bucket_name
 location = "EU"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.image_bucket.name

  role = "roles/storage.objectViewer"

  members = [
    "allUsers",
  ]
}