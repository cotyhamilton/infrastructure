data "digitalocean_project" "default" {
  name = var.project_name
}

data "digitalocean_domain" "k3s" {
  name = var.domain_name
}

data "digitalocean_ssh_key" "default" {
  name = var.ssh_key_name
}

data "digitalocean_volume" "k3s" {
  name = var.volume_name
}