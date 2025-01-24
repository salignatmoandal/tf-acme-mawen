output "vpc" {
  value       = module.vpc
  description = "vpc module output"
}

output "calculated_cidr_blocks" {
  description = "values of calculated cidr blocks"
  value = {
    public_subnet_cidrs       = local.public_subnet_cidrs
    private_data_subnet_cidrs = local.private_data_subnet_cidrs
    private_subnet_cidrs      = local.private_subnet_cidrs
  }
}

