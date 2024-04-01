resource "digitalocean_volume" "k3s" {
  name                    = "k3s"
  region                  = "nyc3"
  size                    = "20"
}
