variable "identifier" {
  type        = string
  description = "RDS instance identifier"
}

variable "db_name" {
  type        = string
  description = "Initial database name"
}

variable "username" {
  type        = string
  description = "Master username for RDS"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "Master password for RDS"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for RDS subnet group"
}

variable "allowed_security_group_id" {
  type        = string
  description = "Security group ID to allow RDS access"
}

variable "multi_az" {
  type        = bool
  default     = false
  description = "Enable Multi-AZ deployment"
}

variable "engine" {
  type        = string
  default     = "mysql"
  description = "Database engine (mysql, postgres, etc)"
}

variable "engine_version" {
  type        = string
  default     = "8.0"
  description = "Engine version"
}

variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
  description = "Instance class size"
}

variable "allocated_storage" {
  type        = number
  default     = 20
  description = "Allocated storage in GB"
}

variable "resource_name" {
  type        = string
  description = "Resource name prefix"
}

variable "project_name" {
  type        = string
  description = "Project name"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, prod, etc)"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
}
