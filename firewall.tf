variable "default_ports" {
  type    = list(string)
  default = ["22", "80", "443"]
}

resource "hcloud_firewall" "default_web" {
  name = "default_web"
  rule {
    direction = "in"
    protocol  = "icmp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  dynamic "rule" {
    for_each = var.default_ports
    content {
      direction = "in"
      protocol  = "tcp"
      port      = rule.value
      source_ips = [
        "0.0.0.0/0",
        "::/0"
      ]
    }
  }
}
