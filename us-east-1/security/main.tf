module "internal_vpc_traffic_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "= 5.2.0"

  name        = "Internal-VPC-Traffic"
  description = "Security group for internal VPC traffic"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc.vpc.vpc_id

  ingress_cidr_blocks = ["10.10.0.0/16", "0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8090
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

resource "aws_iam_user" "acme_demo_user" {
  name = "acme_demo_user"
}