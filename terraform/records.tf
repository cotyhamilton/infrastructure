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
  value  = "db55e6dde3ec0454411d7b543537362a._acme.deno.net."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_ip_cname" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "ip"
  value  = "alias.deno.net."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_notes" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "CNAME"
  name   = "_acme-challenge.notes"
  value  = "723aada2078ce3cf5d72b9f9._acme.deno.dev."
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_notes_a" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "A"
  name   = "notes"
  value  = "34.120.54.55"
  ttl    = 60
}

resource "digitalocean_record" "cotyhamilton_notes_aaaa" {
  domain = digitalocean_domain.cotyhamilton.id
  type   = "AAAA"
  name   = "notes"
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

resource "digitalocean_record" "tiffanyygale_hk" {
  domain = digitalocean_domain.tiffanyygale.id
  type   = "CNAME"
  name   = "_acme-challenge.hellokitty"
  value  = "52839fad7cbce3af66a7e14d._acme.deno.dev."
  ttl    = 60
}

resource "digitalocean_record" "tiffanyygale_hk_a" {
  domain = digitalocean_domain.tiffanyygale.id
  type   = "A"
  name   = "hellokitty"
  value  = "34.120.54.55"
  ttl    = 60
}

resource "digitalocean_record" "tiffanyygale_hk_aaaa" {
  domain = digitalocean_domain.tiffanyygale.id
  type   = "AAAA"
  name   = "hellokitty"
  value  = "2600:1901:0:6d85::"
  ttl    = 60
}
