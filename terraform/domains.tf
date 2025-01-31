resource "digitalocean_domain" "cotyhamilton" {
  name = "cotyhamilton.com"
}

resource "digitalocean_domain" "tiffanyygale" {
  name = "tiffanyygale.com"
}

resource "digitalocean_project_resources" "domains" {
  project = digitalocean_project.cotyhamilton.id
  resources = [
    digitalocean_domain.cotyhamilton.urn,
    digitalocean_domain.tiffanyygale.urn
  ]
}