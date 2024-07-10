provider "google" {
  project = "e-commerce-life"
  region  = "europe-west3"
}

resource "google_compute_instance" "default" {
  name         = "e-commerce-VM"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210720"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  tags = ["http-server", "https-server"]
}

resource "google_compute_firewall" "default" {
  name    = "allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server", "https-server"]
}