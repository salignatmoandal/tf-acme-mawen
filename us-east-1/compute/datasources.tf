data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "as-js-lab-states"
    region = "us-east-1"
    key    = "acme/us-east-1/network.tfstate"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"

  config = {
    bucket = "as-js-lab-states"
    region = "us-east-1"
    key    = "acme/us-east-1/security.tfstate"
  }
}
