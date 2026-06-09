variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  validation {
    condition     = contains(["development", "staging", "production"], var.environment)
    error_message = "Must be development, staging or production!"
  }
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "lon1"
}

variable "droplet_size" {
  description = "Size of the droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "image" {
  description = "OS image"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "ssh_key_id" {
  description = "SSH Key ID"
  type        = string
}

variable "project_name" {
  description = "DigitalOcean project name"
  type        = string
}
