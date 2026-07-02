 
 ############## vpc 
    output "vpc_id" {
  value = module.vpc.vpc_id
}

######## public_subn
output "public_subnet_ids" {
  value = module.public_subnet.public_subnet_ids
}

############ private_subnet

output "private_subnet_ids" {
  value = module.private_subnet.private_subnet_ids
}


##################  SG 
output "security_group_id" {
  value = module.security_group.security_group_id
}


############ route_public 

output "igw_id" {
  value = module.vpc.igw_id
}


###########3  Route tables id

output "route_table_id" {
  value = module.route_table.route_table_id
}


##################  Nat

 output "nat_gateway_id" {
  value = module.nat_gateway.nat_gateway_id
}

#######################

output "eip_id" {
  value = module.nat_gateway.eip_id
}



############### SG FOR RDS

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "rds_id" {
  value = module.rds.rds_id
}


################# eks 

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}