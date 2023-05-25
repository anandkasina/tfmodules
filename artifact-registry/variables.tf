variable "location" {
  type    = string
  default = ""
}

variable "repository_id" {
  type    = string
  default = ""
}

variable "description" {
  type    = string
  default = ""
}

variable "format" {
  type    = string
  default = ""
}

variable "labels" {
  type    = map(string)
  default = null
}

variable "project" {
  type    = string
  default = ""
}
