
variable "api_id" {
  type    = string
  description = "Identifier to assign to the API. Must be unique within scope of the parent resource"
}

variable "project_id" {
  type    = string
  description = "project id of the project where resource is deployed"
}

variable "path" {
  type    = string
}

variable "contents" {
  type    = string
}

variable "api_config_id" {
  type    = string
  description = "Identifier to assign to the API Config. Must be unique within scope of the parent resource"
}

variable "api_gateway_id" {
  type    = string
  description = "Identifier to assign to the API Gateway. Must be unique within scope of the parent resource"
}

variable "apigateway_service" {
  type        = string
  description = "api gateway service to be enabled"
}
