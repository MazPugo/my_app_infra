variable "do_token" {
  description = "DigitalOcean API Token"
  sensitive   = true
}

variable "ssh_key_id" {
  description = "SSH Key ID from DigitalOcean"
}