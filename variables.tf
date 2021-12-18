variable "HCLOUD_TOKEN" {
  type        = string
  sensitive   = true
  description = "Hetzner Cloud Access Token"
}

variable "SSH_KEYS" {
  type        = list(string)
  default     = ["me@robinopletal.com"]
  description = "List of authorized SSH keys"
}
