
################# vpc 

vpc_cidr = "10.0.0.0/16"

########################## public subnets

public_subnets = {
  public-1 = {
    cidr = "10.0.1.0/24"
    az   = "us-east-1a"
  }

  public-2 = {
    cidr = "10.0.2.0/24"
    az   = "us-east-1b"
  }
}

#################  private subnets 
private_subnets = {
 private-3 = {
  cidr = "10.0.3.0/24"
  az   = "us-east-1a"
}

private-4 = {
  cidr = "10.0.4.0/24"
  az   = "us-east-1b"
}

private-5 = {
  cidr = "10.0.5.0/24"
  az   = "us-east-1c"
}

private-6 = {
  cidr = "10.0.6.0/24"
  az   = "us-east-1a"
}

private-7 = {
  cidr = "10.0.7.0/24"
  az   = "us-east-1b"
}

private-8 = {
  cidr = "10.0.8.0/24"
  az   = "us-east-1c"
}
}


##################  SG 

sg_name      = "prod"
ingress_ports = [
  22,
  80,
  443,
  8080
]
allowed_cidr = ["0.0.0.0/0"]


###########  rds\

identifier = "dev-mysql"

db_name     = "appdb"
username = "admin"
password = "Admin#12345"

multi_az = true


##################  eks 

cluster_version = "1.33"

node_groups = {

  workers = {

    instance_types = ["t3.medium"]

    capacity_type = "ON_DEMAND"

    scaling_config = {

      desired_size = 2
      min_size     = 2
      max_size     = 4

    }

  }

}


project_name = "mahesh-app"
environment = "dev"

