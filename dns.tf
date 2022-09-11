resource "cloudflare_record" "tftest" {
  zone_id  = var.zone_id
  name     = "tftest"
  value    = digitalocean_droplet.www.ipv4_address
  type     = "A"
  proxied  = true
}
