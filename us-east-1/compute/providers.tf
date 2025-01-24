provider "aws" {
  region = local.aws_region

  default_tags {
    tags = local.acme_demo_tags
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"

  default_tags {
    tags = local.acme_demo_tags
  }
}
