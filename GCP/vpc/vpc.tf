resource "google_compute_network" "vpc_default" {
  name = "default"
  auto_create_subnetworks = true
  mtu = 1460
}