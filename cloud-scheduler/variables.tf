variable "project_id" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "Region where the scheduler job resides."
}

variable "scheduler_name" {
  type    = string
  default = ""
}

variable "scheduler_description" {
  type    = string
  default = ""
}

variable "scheduler_cron_expression" {
  type    = string
  default = ""
}

variable "scheduler_time_zone" {
  type    = string
  default = ""
}
variable "scheduler_http_method" {
  type    = string
  default = ""
}

variable "scheduler_attempt_deadline" {
  type    = string
  default = ""
}

variable "scheduler_retry_count" {
  type    = number
  default = 0
}

variable "scheduler_function_url" {
  type    = string
  default = ""
}

variable "cloudScheduler_service_account_email" {
  type    = string
  default = ""
}