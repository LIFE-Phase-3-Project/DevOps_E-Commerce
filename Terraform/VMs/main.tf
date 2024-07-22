resource "google_compute_instance" "default" {
  name = var.vm_name
  machine_type = "e2-medium"
  zone = var.zone

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

  tags = [ "http-server", "https-server" ]
}