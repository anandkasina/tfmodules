output "ip_address" {
  description = "The external IP address that was created"
  value       = google_compute_address.external_ip.address
}