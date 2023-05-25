output "address" {
  value       = google_compute_global_address.google-managed-services-range.address
  description = "First IP of the reserved range."
}

output "google_compute_global_address_name" {
  value       = google_compute_global_address.google-managed-services-range.name
  description = "Name of the reserved range."
}
