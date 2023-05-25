variable "project_id" {
  type        = string
  description = "The project ID to manage the Secret Manager resources"
}

variable "secrets" {
  type        = list(map(string))
  description = "The list of the secrets"
  default     = []
}

variable "user_managed_replication" {
  type        = map(list(object({ location = string, kms_key_name = string })))
  description = "Replication parameters that will be used for defined secrets"
  default     = {}
}

variable "topics" {
  type        = map(list(object({ name = string })))
  description = "topics that will be used for defined secrets"
  default     = {}
}

variable "labels" {
  type        = map(map(string))
  description = "labels to be added for the defined secrets"
  default     = {}
}

variable "add_kms_permissions" {
  type        = list(string)
  description = "The list of the crypto keys to give secret manager access to"
  default     = []
}

variable "add_pubsub_permissions" {
  type        = list(string)
  description = "The list of the pubsub topics to give secret manager access to"
  default     = []
}