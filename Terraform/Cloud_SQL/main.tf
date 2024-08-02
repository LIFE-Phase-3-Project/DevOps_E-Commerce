provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_sql_database_instance" "sql_server_instance" {
  name = var.instance_name
  region = var.region
  deletion_protection = false

  database_version = "SQLSERVER_2019_STANDARD"
  
  settings {
    tier = "db-custom-1-3840"
    availability_type = "REGIONAL"
    
    backup_configuration {
      enabled = true
      start_time = "02:00"
      location = var.region
    }
  }
  
  root_password = var.root_password
}

resource "google_sql_user" "sql_server_user" {
  name = var.database_user_name
  password = var.database_user_password
  instance = google_sql_database_instance.sql_server_instance.name
}

resource "google_sql_database" "sql_server_database" {
  name = var.database_name
  instance = google_sql_database_instance.sql_server_instance.name
}

resource "google_compute_firewall" "allow-sql" {
  name = "allow-sql"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["1433"]
  }

  source_ranges = ["0.0.0.0/0"]
}