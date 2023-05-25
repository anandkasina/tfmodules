output "key_id" {
  description = "KMS key id"
  value       = google_kms_crypto_key.key.id
}
output "keyring_id" {
  description = "Keyring ID"
  value       = google_kms_key_ring.keyring.id
}
