data "external" "droplet_name" {
  program = ["python3", "${path.module}/external/namegenerator.py"]
}

data "cloudflare_ip_ranges" "cloudflare" {}