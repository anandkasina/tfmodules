resource "google_monitoring_alert_policy" "alert_policy" {
  project = var.project_id
  display_name = var.alert_policy_display_name
  combiner     = var.alert_policy_combiner

  dynamic "conditions" {
    for_each = var.conditions
    content {
      display_name = conditions.value.display_name

      condition_threshold {
        filter     = conditions.value.filter
        duration   = conditions.value.duration
        comparison = conditions.value.comparison
        threshold_value = conditions.value.threshold_value

        dynamic "aggregations" {
          for_each = conditions.value.aggregations
          content {
            alignment_period   = aggregations.value.alignment_period
            per_series_aligner = aggregations.value.per_series_aligner
          }
        }
      }
    }
  }

  user_labels = var.user_labels
   notification_channels = var.notification_channel_ids
}
