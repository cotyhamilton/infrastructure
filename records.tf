####################################
# cotyhamilton.com
####################################

resource "digitalocean_record" "cotyhamilton_ns" {
  for_each = toset(local.do_name_servers)

  domain = digitalocean_domain.cotyhamilton.id
  type   = "NS"
  name   = "@"
  value  = "${each.value}."
  ttl    = 1800
}

resource "digitalocean_record" "cotyhamilton_root" {
  for_each = toset(local.github_ips)

  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = each.value
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