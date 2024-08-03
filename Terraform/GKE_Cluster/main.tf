resource "google_container_cluster" "cluster" {
  name = var.cluster_name
  location = var.location
  remove_default_node_pool = true
  initial_node_count = 1

  ip_allocation_policy {}
}

resource "google_container_node_pool" "node_pool" {
  name = var.node_pool_name
  location = var.location
  cluster = google_container_cluster.cluster.name
  node_count = 1
  node_locations = ["europe-west3-a", "europe-west3-b"]

  node_config {
    preemptible = false
    machine_type = "e2-medium"

    service_account = var.service_account_email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  management {
    auto_upgrade = true
    auto_repair = true
  }
}