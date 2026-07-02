output "vpc_id" {
  value = aws_vpc.main.id
}
#########3 igw 

output "igw_id" {
  value = aws_internet_gateway.main.id
}