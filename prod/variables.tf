variable "do_token" {
  description = "DigitalOcean API Token"
  sensitive   = true
  type        = string
}

variable "ssh_key_id" {
  description = "SSH Key ID from DigitalOcean"
  type        = string
}

