resource "hcloud_ssh_key" "keys" {
  for_each = toset(var.SSH_KEYS)

  name       = each.key
  public_key = file("ssh_keys/${each.key}")
}
