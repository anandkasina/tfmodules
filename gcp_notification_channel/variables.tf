variable "project_id"{
    type = string
}

variable "notification_channels" {
  type = list(object({
    display_name   = string
    type           = string
    labels         = map(string)
    auth_token     = optional(string)
  }))
}
