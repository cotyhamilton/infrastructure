resource "digitalocean_monitor_alert" "cluster_cpu" {
  alerts {
    email = [data.digitalocean_account.default.email]
  }
  window      = "5m"
  type        = "v1/insights/droplet/cpu"
  compare     = "GreaterThan"
  value       = 95
  enabled     = true
  description = "CPU Utilization Percent is running high"
  tags        = [digitalocean_tag.cluster.name]
}

resource "digitalocean_monitor_alert" "cluster_memory" {
  alerts {
    email = [data.digitalocean_account.default.email]
  }
  window      = "5m"
  type        = "v1/insights/droplet/memory_utilization_percent"
  compare     = "GreaterThan"
  value       = 85
  enabled     = true
  description = "Memory Utilization Percent is running high"
  tags        = [digitalocean_tag.cluster.name]
}

resource "digitalocean_uptime_check" "deno" {
  name    = "deno"
  type    = "https"
  target  = "https://taylor-swift-lyrics.deno.dev/search"
  regions = ["us_east", "us_west"]
}

resource "digitalocean_uptime_alert" "deno_latency" {
  name       = "latency"
  check_id   = digitalocean_uptime_check.deno.id
  type       = "latency"
  threshold  = 1000
  comparison = "greater_than"
  period     = "2m"
  notifications {
    email = [data.digitalocean_account.default.email]
  }
}

resource "digitalocean_uptime_alert" "deno_downtime" {
  name       = "downtime"
  check_id   = digitalocean_uptime_check.deno.id
  type       = "down"
  threshold  = 1
  comparison = "less_than"
  period     = "2m"
  notifications {
    email = [data.digitalocean_account.default.email]
  }
}

resource "digitalocean_uptime_check" "cluster" {
  name    = "cluster"
  type    = "https"
  target  = "https://k8s-info.cotyhamilton.com"
  regions = ["us_east", "us_west"]
}

resource "digitalocean_uptime_alert" "cluster_latency" {
  name       = "latency"
  check_id   = digitalocean_uptime_check.cluster.id
  type       = "latency"
  threshold  = 1000
  comparison = "greater_than"
  period     = "2m"
  notifications {
    email = [data.digitalocean_account.default.email]
  }
}

resource "digitalocean_uptime_alert" "cluser_downtime" {
  name       = "downtime"
  check_id   = digitalocean_uptime_check.cluster.id
  type       = "down"
  threshold  = 1
  comparison = "less_than"
  period     = "2m"
  notifications {
    email = [data.digitalocean_account.default.email]
  }
}
