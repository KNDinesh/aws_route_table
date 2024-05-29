# variables for the module
variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "nat_gateway_id" {
  description = "The ID of the NAT gateway (optional)"
  type        = string
}

variable "type" {
  description = "Type of route table (public or private)"
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
  type        = string
}
