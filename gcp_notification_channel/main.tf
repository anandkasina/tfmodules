resource "google_monitoring_notification_channel" "notification_channel" {
  project = var.project_id
  for_each = { for c in var.notification_channels : c.display_name => c }
  display_name = each.value.display_name
  type         = each.value.type
  labels       = each.value.labels
  sensitive_labels {
   auth_token = each.value.auth_token
  }
}
