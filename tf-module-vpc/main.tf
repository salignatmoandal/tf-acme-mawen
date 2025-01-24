data "aws_availability_zones" "available" {}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name                          = var.name
  cidr                          = var.cidr
  secondary_cidr_blocks         = var.secondary_cidr_blocks
  map_public_ip_on_launch       = true
  manage_default_security_group = true
  manage_default_route_table    = true
  manage_default_network_acl    = true

  azs              = local.availability_zones
  public_subnets   = coalesce(var.public_subnets, local.public_subnet_cidrs)
  database_subnets = coalesce(var.database_subnets, local.private_data_subnet_cidrs)
  private_subnets  = concat(coalesce(var.private_subnets, local.private_subnet_cidrs), var.additional_private_subnets)

  #   enable_nat_gateway     = var.enable_nat_gateway
  #   one_nat_gateway_per_az = true # this parameter is ignored when single_nat_gateway is set to `true`
  #   single_nat_gateway     = var.single_nat_gateway


  #   enable_vpn_gateway   = var.enable_vpn_gateway
  enable_dns_hostnames = true

  #   customer_gateways = var.vpc_customer_gateways

  #   public_subnet_tags = {
  #     "kubernetes.io/role/elb" = "1"
  #   }

  #   private_subnet_tags = {
  #     "kubernetes.io/role/internal-elb" = "1"
  #   }
}
