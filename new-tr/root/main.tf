module "vpc" {
  source   = "../networking/modules/vpc"
  resource_name = local.resource_name
  tags          = local.common_tags

  vpc_cidr = var.vpc_cidr
  project        = var.project_name
  environment    = var.environment

}

#########  public_subnet

module "public_subnet" {
  source = "../networking/modules/public_subnet"

  resource_name = local.resource_name
  tags          = local.common_tags


  vpc_id         = module.vpc.vpc_id
  public_subnets = var.public_subnets
  project_name   = var.project_name
  environment    = var.environment

}

###############  private subnet

module "private_subnet" {
  source = "../networking/modules/private_subnet"

  resource_name = local.resource_name
  tags          = local.common_tags


  vpc_id         = module.vpc.vpc_id
  private_subnets = var.private_subnets
  project_name   = var.project_name
  environment    = var.environment

}


#############  SG

module "security_group" {
  source = "../networking/modules/SG"

  resource_name = local.resource_name
  tags          = local.common_tags


  vpc_id       = module.vpc.vpc_id
  sg_name      = var.sg_name
  ingress_ports  = var.ingress_ports
  allowed_cidr = var.allowed_cidr
  project_name = var.project_name
  environment    = var.environment

}

################ Nat

module "route_table" {
  source = "../networking/modules/pub_route"

  resource_name = local.resource_name
  tags          = local.common_tags


  vpc_id            = module.vpc.vpc_id
  igw_id            = module.vpc.igw_id
  public_subnet_ids = module.public_subnet.public_subnet_ids
  project_name       = var.project_name
  environment    = var.environment

}

#####  

module "nat_gateway" {
  source = "../networking/modules/Nat"
  
  resource_name = local.resource_name
  tags          = local.common_tags

  

  public_subnet_id = module.public_subnet.public_subnet_ids["public-1"]
  project        = var.project_name
  environment    = var.environment

}


############RDS

# RDS Module
# ------------------------

module "rds" {
  source        = "../networking/modules/RDS"
  resource_name = local.resource_name
  tags          = local.common_tags

  identifier = var.identifier

  db_name  = var.db_name
  username = var.username
  password = var.password

  # networking outputs
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.private_subnet.private_subnet_ids

  # existing security group from VPC/app layer
  allowed_security_group_id = module.security_group.security_group_id

  multi_az         = var.multi_az
  project_name     = var.project_name
  environment      = var.environment
}
################ EKS ################

# module "eks" {
#   source = "../networking/modules/eks"
#   resource_name = local.resource_name
#   tags          = local.common_tags
#
#   # Pass outputs from networking
#   vpc_id     = module.vpc.vpc_id
#   subnet_ids = module.private_subnet.private_subnet_ids
#
#   # Pass EKS variables
#   cluster_version = var.cluster_version
#   node_groups     = var.node_groups
#   project_name    = var.project_name
#   environment     = var.environment
# }
