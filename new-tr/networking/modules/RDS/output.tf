output "rds_endpoint" {
  value = aws_db_instance.this.endpoint
}

output "rds_id" {
  value = aws_db_instance.this.id
}

output "rds_subnet_group" {
  value = aws_db_subnet_group.this.name
}

variable "resource_name" {
  type = string
}