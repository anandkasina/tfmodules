resource "google_kms_key_ring" "keyring" {
  name     = var.keyring_name
  location = var.region
  project  = var.project_id
}
resource "google_kms_crypto_key" "key" {
  name     = var.key_name
  key_ring = google_kms_key_ring.keyring.id
  purpose  = var.key_purpose

  version_template {
    algorithm        = var.key_algorithm
    protection_level = var.key_protection_level
  }

  lifecycle {
    prevent_destroy = true
  }
}


