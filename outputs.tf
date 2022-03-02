output "droplet-ip" {
  value = digitalocean_droplet.lab_tf.ipv4_address
}

output "droplet-size" {
  value = digitalocean_droplet.lab_tf.size
}