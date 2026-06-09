resource "digitalocean_droplet" "db" {
  name     = var.app_name
  region   = var.region
  size     = var.droplet_size
  image    = var.image
  ssh_keys = [var.ssh_key_id]
  backups  = false

  tags = [
    "app:${var.app_name}",
    "env:${var.environment}",
    "role:database",
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

resource "digitalocean_project_resources" "db" {
  project = data.digitalocean_project.my_app.id
  resources = [
    digitalocean_droplet.db.urn
  ]
}
