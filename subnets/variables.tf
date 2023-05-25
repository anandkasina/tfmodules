/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The ID of the project where subnets will be created"
  type        = string
}

variable "network_name" {
  description = "The name of the network where subnets will be created"
  type        = string
}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
  default = [{
    subnet_name = ""
    subnet_ip = ""
    subnet_region = "asia-south1"
    subnet_private_access = true
    subnet_flow_logs             = false
    subnet_flow_logs_interval    = "INTERVAL_5_SEC"
    subnet_flow_logs_sampling    = "0.5"
    subnet_flow_logs_metadata    = "INCLUDE_ALL_METADATA"
    subnet_flow_logs_filter_expr = null
  }]
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "Secondary ranges that will be used in some of the subnets"
  default     = {}
}
