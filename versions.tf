terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.35.1"
    }
  }
  required_version = ">= 0.14"
}
