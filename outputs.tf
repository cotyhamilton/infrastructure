output "summary" {
  value = {
    domains : data.digitalocean_domains.data.domains.*.name
    droplets : [
      for key, droplet in data.digitalocean_droplets.data.droplets :
      {
        name      = droplet.name
        ip_public = droplet.ipv4_address
        price     = droplet.price_monthly
      }
    ]
  }
}

# output "cluster_summary" {
#   value = module.k3s.cluster_summary
# }