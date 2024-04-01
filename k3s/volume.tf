resource "digitalocean_volume_attachment" "k3s" {
  droplet_id = digitalocean_droplet.k3s.id
  volume_id  = data.digitalocean_volume.k3s.id
}
