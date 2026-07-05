terraform {
  backend "s3" {
    bucket       = "your-terraform-state-bucket"
    key          = "networking/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
