variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = map(string)
}

variable "nat_gateway_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "resource_name" {
  type = string
}

variable "tags" {
  type = map(string)
}
