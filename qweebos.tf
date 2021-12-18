resource "hcloud_server" "qweebos" {
  name        = "qweebos.com"
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
}
