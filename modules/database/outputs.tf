output "db_droplet_ip" {
  description = "Public IP of the database droplet"
  value       = digitalocean_droplet.db.ipv4_address
}

output "db_droplet_name" {
  description = "Name of the database droplet"
  value       = digitalocean_droplet.db.name
}
