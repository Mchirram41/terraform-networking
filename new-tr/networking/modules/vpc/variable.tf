variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "project" {
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