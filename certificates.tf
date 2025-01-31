resource "digitalocean_certificate" "cotyhamilton" {
  name    = digitalocean_domain.cotyhamilton.name
  type    = "lets_encrypt"
  domains = [
    digitalocean_domain.cotyhamilton.name,
    "*.${digitalocean_domain.cotyhamilton.name}"
    ]
}