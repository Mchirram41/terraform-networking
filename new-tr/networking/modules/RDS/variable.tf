variable "identifier" {}

variable "db_name" {}
variable "username" {}
variable "password" {}

variable "vpc_id" {}

variable "subnet_ids" {
  type = list(string)
}

# existing SG from VPC/app module
variable "allowed_security_group_id" {}

variable "multi_az" {
  type    = bool
  default = false
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "8.0"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "allocated_storage" {
  default = 20
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "tags" {
  type = map(string)
}

