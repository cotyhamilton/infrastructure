####################################
# cotyhamilton.com
####################################

resource "digitalocean_record" "cotyhamilton_ns1" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "NS"
  name   = "@"
  value  = "ns1.digitalocean.com."
  ttl    = 1800
}

resource "digitalocean_record" "cotyhamilton_ns2" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "NS"
  name   = "@"
  value  = "ns2.digitalocean.com."
  ttl    = 1800
}

resource "digitalocean_record" "cotyhamilton_ns3" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "NS"
  name   = "@"
  value  = "ns3.digitalocean.com."
  ttl    = 1800
}

resource "digitalocean_record" "cotyhamilton_root1" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = "185.199.108.153"
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_root2" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = "185.199.109.153"
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_root3" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = "185.199.110.153"
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_root4" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_www" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "www"
  value  = "cotyhamilton.github.io."
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_wildcard" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "*"
  value  = digitalocean_droplet.cotyhamilton.ipv4_address
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_fm" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "frontendmentor"
  value  = "cotyhamilton.github.io."
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_commands" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "commands"
  value  = "cname.vercel-dns.com."
  ttl    = 3600
}

resource "digitalocean_record" "cotyhamilton_hn" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "hn"
  value  = "cname.vercel-dns.com."
  ttl    = 3600
}