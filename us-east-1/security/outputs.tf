# outputs.tf

output "internal_vpc_traffic_sg_arn" {
  description = "ID of the internal VPC traffic security group"
  value       = module.internal_vpc_traffic_sg.security_group_arn
}

output "internal_vpc_traffic_sg_id" {
  description = "ID of the internal VPC traffic security group"
  value       = module.internal_vpc_traffic_sg.security_group_id
}
