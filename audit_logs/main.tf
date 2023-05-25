resource "google_project_iam_audit_config" "audit_logs" {
  project = var.project_id
  service = var.service
  audit_log_config {
    log_type = "ADMIN_READ"
  }
  audit_log_config {
    log_type = "DATA_READ"
  }
  audit_log_config {
    log_type = "DATA_WRITE"
  }
}
