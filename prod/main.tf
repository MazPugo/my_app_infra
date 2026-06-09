module "my_app_db" {
  source       = "../modules/database"
  app_name     = "my-app-db"
  environment  = "production"
  region       = "lon1"
  droplet_size = "s-1vcpu-1gb"
  image        = "ubuntu-24-04-x64"
  ssh_key_id   = var.ssh_key_id
  project_name = "my_app"
}
