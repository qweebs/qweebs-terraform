resource "hcloud_server" "qweebs" {
  name        = "qweebs.com"
  server_type = "cx11"
  image       = "debian-11"
  location    = "fsn1"
  ssh_keys    = var.SSH_KEYS

  network {
    network_id = hcloud_network.default.id
    ip         = "10.0.1.5"
  }

  depends_on = [
    hcloud_network_subnet.default-subnet
  ]

  lifecycle {
    ignore_changes = [ssh_keys]
  }
}
