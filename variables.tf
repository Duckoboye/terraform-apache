variable "do_token" {
  description = "API token for digitalocean"
  type        = string
  sensitive   = true
}
variable "cf_token" {
  description = "API token for cloudflare"
  type        = string
  sensitive   = true
}

variable "pvt_key" {
  description = "File path of SSH private key"
  type        = string
  sensitive   = true
}
variable "zone_id" {
  description = "Cloudflare zone-id for domain"
  type        = string
  sensitive   = true
}