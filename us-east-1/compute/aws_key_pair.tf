resource "aws_key_pair" "acme_demo_key" {
  key_name   = "acme-demo-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL7qlrLeVUR5OwcS0kE1k1oM4YCC6q+azLEeC11UxqON sjourdan@papoy.local"
}
