resource "digitalocean_droplet" "cotyhamilton" {
  name    = "cotyhamilton-1"
  image   = "68521644"
  size    = "s-2vcpu-4gb-intel"
  region  = "nyc1"
  ipv6    = true
  backups = true
  tags    = ["web"]
}

resource "digitalocean_project_resources" "droplets" {
  project = digitalocean_project.cotyhamilton.id
  resources = [
    digitalocean_droplet.cotyhamilton.urn
  ]
}