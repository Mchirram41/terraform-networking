variable "vpc_id" {
  type        = string
  description = "VPC ID from VPC module"
}

variable "private_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
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