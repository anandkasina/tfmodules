variable "trigger_name" {
  type    = string
  default = ""
}

variable "trigger_location" {
  type    = string
  default = "us-central1"
}

variable "trigger_description" {
  type    = string
  default = ""
}

variable "branch_name" {
  type    = string
  default = ""
}

variable "repo_name" {
  type    = string
  default = ""
}

variable "repo_owner" {
  type    = string
  default = ""
}

variable "cloud_build_file_name" {
  type    = string
  default = ""
}

variable "github_enabled" {
  type    = bool
  default = true
}

variable "cloud_function_name" {
  type    = string
  default = ""
}

variable "cloud_function_region" {
  type    = string
  default = ""
}

variable "bucket_name" {
  type    = string
  default = ""
}

variable "trigger_tags" {
  type    = list(string)
  default = []
}