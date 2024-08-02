variable "project_id" {
  description = "The project ID to deploy to"
  type = string
}

variable "region" {
  description = "The region to deploy to"
  type = string
}

variable "root_password" {
  description = "The password for the root"
  type = string
}

variable "instance_name" {
  description = "The name of the database instance"
  type = string
}

variable "database_user_name" {
  description = "The name of the database user"
  type = string
}

variable "database_user_password" {
  description = "The password of the database user"
  type = string
}

variable "database_name" {
  description = "The name of the database"
  type = string
}