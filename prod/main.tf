module "my_app" {
  source       = "../modules/droplet"
  app_name     = "my_app"
  environment  = "production"
  region       = "lon1"
  droplet_size = "s-1vcpu-2gb"
  image        = "ubuntu-24-04-x64"
  ssh_key_id   = var.ssh_key_id
  project_name = "my_app"
}
