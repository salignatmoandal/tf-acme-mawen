provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Team    = "infra"
      Project = "demo"
      Stack   = "network"
    }
  }

  ignore_tags {
    key_prefixes = ["kubernetes.io/cluster/"]
  }
}


