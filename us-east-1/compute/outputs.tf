# outputs.tf

output "database1_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.acme_database_1.arn
}

output "www1_arn" {
  description = "arn address of the www1 instance"
  value       = module.acme_www_1.arn
}

output "www2_arn" {
  description = "arn address of the www2 instance"
  value       = module.acme_www_2.arn
}
