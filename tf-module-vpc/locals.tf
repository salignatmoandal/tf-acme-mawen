locals {

  public_supernet       = cidrsubnet(var.cidr, 3, 0)
  private_data_supernet = cidrsubnet(var.cidr, 3, 3)
  private_supernet      = cidrsubnet(var.cidr, 1, 1)

  public_subnet_cidrs       = cidrsubnets(local.public_supernet, 2, 2, 2)
  private_data_subnet_cidrs = cidrsubnets(local.private_data_supernet, 2, 2, 2)
  private_subnet_cidrs      = cidrsubnets(local.private_supernet, 2, 2, 2)

  availability_zones = slice(data.aws_availability_zones.available.names, 0, var.max_azs)

}
