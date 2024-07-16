output "instance-ip" {
  description = "The IP address of the instance"
  value = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}