output "public_subnet_ids" {
  value = {
    for k, subnet in aws_subnet.public : k => subnet.id
  }
}