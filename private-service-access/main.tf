
data "google_compute_network" "main" {
  name    = var.vpc_network
  project = var.project_id
}

# Create an IP address
resource "google_compute_global_address" "google-managed-services-range" {
  provider      = google-beta
  project       = var.project_id
  name          = var.name
  description   = var.description
  purpose       = "VPC_PEERING"
  address       = var.address
  prefix_length = var.prefix_length
  ip_version    = var.ip_version
  labels        = var.labels
  address_type  = "INTERNAL"
  network       = data.google_compute_network.main.self_link
}

# Creates the peering with the producer network.
resource "google_service_networking_connection" "private_service_access" {
  provider                = google-beta
  network                 = data.google_compute_network.main.self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = length(var.reserved_peering_ranges) == 0 ? [google_compute_global_address.google-managed-services-range.name] : var.reserved_peering_ranges
  depends_on = [google_compute_global_address.google-managed-services-range]

}

resource "google_compute_network_peering_routes_config" "peering_routes" {
  peering = google_service_networking_connection.private_service_access.peering
  network = data.google_compute_network.main.name

  import_custom_routes = true
  export_custom_routes = true

  depends_on = [google_service_networking_connection.private_service_access]
}
