variable "name" {
  type        = string
  description = "Name to be used on all the resources as identifier"
}

variable "cidr" {
  type        = string
  description = "The IPv4 CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDRs. If unset, will be calculated based on VPC's CIDR."
  default     = null
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDRs. If unset, will be calculated based on VPC's CIDR."
  default     = null
}

variable "additional_private_subnets" {
  type        = list(string)
  description = "List of additional private subnet CIDRs."
  default     = []
}

variable "database_subnets" {
  type        = list(string)
  description = "List of private database subnet CIDRs. If unset, will be calculated based on VPC's CIDR."
  default     = null
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  default     = false
}

variable "single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

variable "enable_s3_endpoint" {
  type        = bool
  description = "Enable s3 gateway endpoint"
  default     = true
}

variable "enable_dynamodb_endpoint" {
  type        = bool
  description = "Enable dynamodb gateway endpoint"
  default     = false
}

variable "enable_kinesis_streams_endpoint" {
  type        = bool
  description = "Enable kinesis-streams interface endpoint"
  default     = false
}

variable "enable_kinesis_firehose_endpoint" {
  type        = bool
  description = "Enable kinesis-firehose interface endpoint"
  default     = false
}

variable "enable_sqs_endpoint" {
  type        = bool
  description = "Enable sqs interface endpoint"
  default     = false
}

variable "enable_ecr_endpoint" {
  type        = bool
  description = "Enable ecr interface endpoint"
  default     = true
}

variable "vpc_customer_gateways" {
  description = "Maps of Customer Gateway's attributes (BGP ASN and Gateway's Internet-routable external IP address)"
  type        = map(map(any))
  default     = {}
}

variable "service_network_id" {
  description = "Lattice Service Network ID"
  type        = string
  default     = null
}

variable "secondary_cidr_blocks" {
  type        = list(string)
  description = "List of secondary CIDR blocks for the VPC"
  default     = []
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Provision NAT Gateways for private networks"
  default     = true
}

variable "max_azs" {
  type        = number
  description = "Maximum number of Availability Zones to use in this region. Must be set to a number less than or equal to the number of Availability Zones for the region."
  default     = 3
}
