resource "digitalocean_droplet" "lab_tf" {
  image    = "ubuntu-20-04-x64"
  name     = var.nome_droplet
  region   = var.regiao
  size     = "s-1vcpu-2gb"
  ssh_keys = [data.digitalocean_ssh_key.minha_chave.id]
  tags = [
    "desenvolvimento"
  ]
}

resource "digitalocean_firewall" "fwlabs" {
  name = "fwlabs"

  droplet_ids = [digitalocean_droplet.lab_tf.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}