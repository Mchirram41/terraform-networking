terraform {
  backend "s3" {
    bucket       = "mahesh-terraform-state-kud"
    key          = "networking/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
  }
}
