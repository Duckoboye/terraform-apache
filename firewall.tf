resource "digitalocean_firewall" "www" {
  name = "only-httpx"

  droplet_ids = [digitalocean_droplet.www.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["192.168.1.0/24", "2002:1:2::/48"]
  }
    inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = data.cloudflare_ip_ranges.cloudflare.cidr_blocks
  }
    inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = data.cloudflare_ip_ranges.cloudflare.cidr_blocks
  }
    inbound_rule {
    protocol         = "icmp"
    source_addresses = data.cloudflare_ip_ranges.cloudflare.cidr_blocks
  }
  
    outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "udp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}