output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.this.endpoint
}

output "rds_id" {
  description = "RDS instance identifier"
  value       = aws_db_instance.this.id
}

output "rds_subnet_group" {
  description = "DB subnet group name"
  value       = aws_db_subnet_group.this.name
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.this.port
}

output "rds_address" {
  description = "RDS instance address"
  value       = aws_db_instance.this.address
}
