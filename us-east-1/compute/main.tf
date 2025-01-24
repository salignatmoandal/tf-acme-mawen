module "acme_database_1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "acme-database-1"

  instance_type = "t3.nano"
  key_name      = aws_key_pair.acme_demo_key.key_name
  monitoring    = false
  # vpc_security_group_ids = ["sg-12345678"]
  subnet_id = data.terraform_remote_state.vpc.outputs.vpc.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "demo"
  }
}

module "acme_www_1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "acme-www-1"

  instance_type          = "t3.nano"
  key_name               = aws_key_pair.acme_demo_key.key_name
  monitoring             = false
  vpc_security_group_ids = [data.terraform_remote_state.security.outputs.internal_vpc_traffic_sg_id]
  subnet_id              = data.terraform_remote_state.vpc.outputs.vpc.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "demo"
  }
}

module "acme_www_2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "acme-www-2"

  instance_type          = "t3.nano"
  key_name               = aws_key_pair.acme_demo_key.key_name
  monitoring             = false
  vpc_security_group_ids = [data.terraform_remote_state.security.outputs.internal_vpc_traffic_sg_id]
  subnet_id              = data.terraform_remote_state.vpc.outputs.vpc.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "demo"
  }
}
