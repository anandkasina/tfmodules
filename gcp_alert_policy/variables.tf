variable "project_id"{
    type = string
}

variable "alert_policy_display_name" {
  type    = string
  default = "My Alert Policy"
}

variable "alert_policy_combiner" {
  type    = string
}

variable "conditions" {
  type = list(object({
    display_name   = string
    filter         = string
    duration       = string
    comparison     = string
    threshold_value = number
    aggregations   = list(object({
      alignment_period   = string
      per_series_aligner = string
    }))
  }))
}

variable "user_labels" {
  type    = map(string)
}

variable "notification_channel_ids" {
  type = list(string)
}

