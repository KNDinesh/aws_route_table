variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "nat_gateway" {
  description = "The ID of the NAT gateway"
  type        = string
}
