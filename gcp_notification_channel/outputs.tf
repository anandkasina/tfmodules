output "notification_channel_ids" {
  value = [for channel in google_monitoring_notification_channel.notification_channel : channel.id]
}