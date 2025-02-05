terraform {
  backend "s3" {
    bucket  = "tf-state-mawen"
    encrypt = true
    region  = "us-east-2"
    key     = "tf-acme-infra/us-east-1/compute.tfstate"
  }
}
