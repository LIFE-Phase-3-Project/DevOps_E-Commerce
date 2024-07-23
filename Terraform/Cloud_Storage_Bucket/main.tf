provider "google" {
  project = var.project
  region = var.region
}

resource "google_storage_bucket" "image_bucket" {
 name = var.bucket_name
 location = "EU"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}