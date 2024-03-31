resource "digitalocean_ssh_key" "key" {
  name       = "key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAIx03TvQWOeTwgCSiOKoPe6chN8Xh9EFztr36F/vfdO public"
}
