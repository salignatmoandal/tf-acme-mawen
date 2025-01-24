# backend.tf for us-east-1 
terraform {
  backend "s3" {
    bucket  = "as-js-lab-states"
    encrypt = true
    region  = "us-east-1"
    key     = "acme/us-east-1/network.tfstate"
  }
}
