resource "hcloud_network" "default" {
  name     = "default"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_network_subnet" "default-subnet" {
  type         = "cloud"
  network_id   = hcloud_network.default.id
  network_zone = "eu-central"
  ip_range     = "10.0.1.0/24"
}

