##################  vpc cidr

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

############### public_subnet_cidr

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

##################  private subnets

variable "private_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

########### SG

variable "sg_name" {
  type = string
}

variable "ingress_ports" {
  type = list(number)
}

variable "allowed_cidr" {
  type = list(string)
}

############## rds

variable "identifier" {
  type = string
}

variable "db_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "multi_az" {
  type    = bool
  default = true
}

################ eks

# variable "cluster_version" {
#   description = "Kubernetes Version"
#   type        = string
# }
#
# variable "node_groups" {
#   description = "Managed Node Groups"
#
#   type = map(object({
#     instance_types = list(string)
#     capacity_type  = string
#
#     scaling_config = object({
#       desired_size = number
#       min_size     = number
#       max_size     = number
#     })
#   }))
# }



variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}
