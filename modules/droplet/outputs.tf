output "droplet_ip" {
  description = "Public IP of the droplet"
  value       = digitalocean_droplet.my_app.ipv4_address
}

output "droplet_name" {
  description = "Name of the droplet"
  value       = digitalocean_droplet.my_app.name
}

output "droplet_id" {
  description = "ID of the droplet"
  value       = digitalocean_droplet.my_app.id
}
