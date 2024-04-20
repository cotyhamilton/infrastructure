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

resource "digitalocean_record" "cotyhamilton_apex" {
  for_each = toset(local.github_ips)

  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "@"
  value  = each.value
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_www" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "www"
  value  = "cotyhamilton.github.io."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_ip" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "_acme-challenge.ip"
  value  = "8a170e024a51874bec1742f1._acme.deno.dev."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_ip_a" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "ip"
  value  = "34.120.54.55"
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_ip_aaaa" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "AAAA"
  name   = "ip"
  value  = "2600:1901:0:6d85::"
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_fm" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "frontendmentor"
  value  = "cotyhamilton.github.io."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_commands" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "commands"
  value  = "cname.vercel-dns.com."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_hn" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "hn"
  value  = "cname.vercel-dns.com."
  ttl    = 60
}

####################################
# tiffanyygale.com
####################################

resource "digitalocean_record" "tiffanyygale_ns" {
  for_each = toset(local.do_name_servers)

  domain = digitalocean_domain.tiffanyygale.id
  type   = "NS"
  name   = "@"
  value  = "${each.value}."
  ttl    = 1800
}

resource "digitalocean_record" "tiffanyygale_apex" {
  for_each = toset(local.github_ips)

  domain = digitalocean_domain.tiffanyygale.id
  type   = "A"
  name   = "@"
  value  = each.value
  ttl    = 60
}

resource "digitalocean_record" "tiffanyygale_www" {
  domain = digitalocean_domain.tiffanyygale.id
  type   = "CNAME"
  name   = "www"
  value  = "cotyhamilton.github.io."
  ttl    = 60
}
