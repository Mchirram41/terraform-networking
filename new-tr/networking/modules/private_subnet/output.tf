output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private : subnet.id]
}