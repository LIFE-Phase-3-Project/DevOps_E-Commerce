variable "project" {
  description = "The project ID to deploy to"
  type = string
  default = "e-commerce-life"
}

variable "region" {
  description = "The region to deploy to"
  type = string
  default = "europe-west3"
}

variable "zone" {
  description = "The zone to deploy to"
  type = string
  default = "europe-west3-a"
}