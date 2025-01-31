variable "do_token" {
  type        = string
  description = "DigitalOcean API token"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "DigitalOcean region"
  default     = "nyc3"
}

variable "github_repository" {
  type        = string
  description = "GitHub repository"
}
