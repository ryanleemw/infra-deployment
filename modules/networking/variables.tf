# --- networking/variables.tf ---

variable "vpc_cidr" {
  type = string
}

variable "private_cidrs" {}

variable "secondary_cidrs" {}

### VPC Connector Variables ####
variable "vpc_connector" {}

variable "vpc_con_subnet" {}

#variable "vpc_con_name" {}

#variable "vpc_machine_type" {}

#variable "vpc_con_region" {}

### Proxy Subnet ###
variable "proxy_name" {}

variable "regional_proxy_range" {}

variable "proxy_purpose" {}

variable "subnet_role" {}
variable "network" {
  description = "VPC Network"
  type        = string
}

variable "subnet" {
  description = "Subnet"
  type        = list(string)
}

variable "region" {
  description = "GCP Region"
  type        = list(string)
}

variable "project" {
  description = "the project number"
  type        = string
  default     = "rwl-factory-mde"
}

variable "apigee_name" {
  description = "Apigee Peering range name"
  type        = string
}

variable "apigee_range" {
  description = "Apigee Peering CIDR range"
  type        = string
}