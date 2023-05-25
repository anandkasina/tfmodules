resource "google_compute_address" "external_ip" {
  project      = var.project_id
  name         = var.ip_name
  address_type = var.address_type
  network_tier = var.network_tier 
}