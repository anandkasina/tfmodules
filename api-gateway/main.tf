resource "google_api_gateway_api" "api_cfg" {
  provider = google-beta
  api_id   = var.api_id
  project = var.project_id
}

resource "google_api_gateway_api_config" "api_cfg" {
  provider      = google-beta
  project = var.project_id
  api           = google_api_gateway_api.api_cfg.api_id
  api_config_id = var.api_config_id

  openapi_documents {
    document {
      path     = var.path
      contents =  var.contents
    }
  }

  dynamic "gateway_config" {
    for_each = var.google_service_account != "" ? [1] : []
    content {
      backend_config {
        google_service_account = var.google_service_account
      }
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "google_api_gateway_gateway" "api_gw" {
  provider   = google-beta
  project = var.project_id
  api_config = google_api_gateway_api_config.api_cfg.id
  gateway_id = var.api_gateway_id
}

resource "google_project_service" "api-gateway-managed-service" {
  service = var.apigateway_service
  project = var.project_id
}
