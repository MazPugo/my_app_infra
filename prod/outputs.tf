output "droplet_ip" {
  description = "Public IP of the droplet"
  value       = module.my_app.droplet_ip
}

output "droplet_name" {
  description = "Name of the droplet"
  value       = module.my_app.droplet_name
}
