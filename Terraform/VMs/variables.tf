variable "project" {
  description = "The project ID to deploy to"
  type = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type = string
}

variable "region" {
  description = "The region to deploy to"
  type = string
}

variable "zone" {
  description = "The zone to deploy to"
  type = string
}