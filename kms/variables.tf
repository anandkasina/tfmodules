variable "project_id" {
  type = string
}
variable "region" {
  type = string
}
variable "keyring_name" {
  type = string
}
variable "key_name" {
  type        = string
  description = "The resource name for the CryptoKey."
}
variable "key_purpose" {
  type        = string
  description = "The immutable purpose of this CryptoKey"
  default     = "ENCRYPT_DECRYPT"
}
variable "key_destroy_scheduled_duration" {
  type        = string
  description = "hours before the key can be terminated. 7 Days by default"
  default     = "7d"
}
variable "key_algorithm" {
  type        = string
  description = "The algorithm to use when creating a version based on this template"
  default     = "GOOGLE_SYMMETRIC_ENCRYPTION"
}
variable "key_protection_level" {
  type        = string
  description = "The protection level to use when creating a version based on this template. Possible values include SOFTWARE, HSM, EXTERNAL, EXTERNAL_VPC. Defaults to HSM"
}
