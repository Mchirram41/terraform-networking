variable "vpc_id" {
  type = string
}

variable "igw_id" {
  type = string
}

variable "public_subnet_ids" {
  type = map(string)
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