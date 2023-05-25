resource "google_apikeys_key" "primary" {
  name         = var.api_key_name
  display_name = var.api_key_name
  project      = var.project_id
  provider     = google-beta

  restrictions {
    api_targets {
      service = "apigateway.googleapis.com"
    }
  }
}
