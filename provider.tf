provider "digitalocean" {
  token = var.do_token
}
provider "cloudflare" {
  api_token = var.cf_token
}