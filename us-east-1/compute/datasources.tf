data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "tf-state-mawen"
    region = "us-east-1"
    key    = "tf-acme-infra/us-east-1/network.tfstate"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"

  config = {
    bucket = "tf-state-mawen"
    region = "us-east-1"
    key    = "tf-acme-infra/us-east-1/security.tfstate"
  }
}
