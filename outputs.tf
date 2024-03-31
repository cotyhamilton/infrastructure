output "summary" {
  value = {
    domains : [
      digitalocean_domain.cotyhamilton.name,
      digitalocean_domain.tiffanyygale.name,
      digitalocean_domain.avafinance.name,
    ]
  }
}