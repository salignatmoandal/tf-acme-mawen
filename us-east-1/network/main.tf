# A VPC 
module "vpc_acme_demo" {
  source = "../../tf-module-vpc"

  name = "acme-demo-ue1"
  cidr = "10.0.96.0/19"
}
