resource "digitalocean_droplet" "my_app" {
  name     = "my-app-terraform"
  region   = var.region
  size     = var.droplet_size
  image    = var.image
  ssh_keys = [var.ssh_key_id]
  backups  = true

  backup_policy {
    plan    = "weekly"
    weekday = "TUE"
    hour    = 8
  }

  tags = [
    "app:${var.app_name}",
    "env:${var.environment}",
    "region:${var.region}",
    "owner:marzena"
  ]

  lifecycle {
    prevent_destroy       = false
    create_before_destroy = true
  }
}

data "digitalocean_project" "my_app" {
  name = var.project_name
}

resource "digitalocean_project_resources" "my_app" {
  project = data.digitalocean_project.my_app.id
  resources = [
    digitalocean_droplet.my_app.urn
  ]
}
