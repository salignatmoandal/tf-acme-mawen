terraform {
  backend "s3" {
    bucket  = "tf-state-mawen"
    encrypt = true
    region  = "us-east-1"
    key     = "tf-acme-infra/us-east-1/security.tfstate"
  }
}
