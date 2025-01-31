data "digitalocean_droplets" "data" {
  depends_on = [data.digitalocean_kubernetes_versions.cluster]
}
data "digitalocean_domains" "data" {}