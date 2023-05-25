resource "google_artifact_registry_repository" "artifact_repo" {
  location      = var.location
  repository_id = var.repository_id
  description   = var.description
  format        = var.format
  #format        = "DOCKER"
  labels        = var.labels
  project       = var.project
}
