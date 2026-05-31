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
  validation {
    condition     = contains(["lon1", "nyc1", "ams3", "fra1"], var.region)
    error_message = "Must be a valid DigitalOcean region!"
  }
}

variable "droplet_size" {
  description = "Size of the droplet"
  type        = string
  default     = "s-1vcpu-2gb"
  validation {
    condition = contains([
      "s-1vcpu-1gb",
      "s-1vcpu-2gb",
      "s-2vcpu-2gb",
      "s-4vcpu-8gb"
    ], var.droplet_size)
    error_message = "Must be a valid DigitalOcean droplet size!"
  }
}

variable "image" {
  description = "OS image for the droplet"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "ssh_key_id" {
  description = "SSH Key ID from DigitalOcean"
  type        = string
}

variable "project_name" {
  description = "DigitalOcean project name"
  type        = string
}
