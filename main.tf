terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "my_app" {
  name     = "my-app-terraform"
  region   = "lon1"
  size     = "s-1vcpu-2gb"
  image    = "ubuntu-24-04-x64"
  ssh_keys = [var.ssh_key_id]
  backups  = true
  backup_policy {
    plan    = "weekly"
    weekday = "TUE"
    hour    = 8
  }
}

data "digitalocean_project" "my_app" {
  name = "my_app"
}

resource "digitalocean_project_resources" "my_app_resources" {
  project = data.digitalocean_project.my_app.id
  resources = [
    digitalocean_droplet.my_app.urn
  ]
}

output "droplet_ip" {
  value = digitalocean_droplet.my_app.ipv4_address
}