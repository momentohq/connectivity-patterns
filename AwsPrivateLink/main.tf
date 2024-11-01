variable "momento_service_name" {
  description = "The service name of the Momento VPC endpoint. This is given to you by a Momento engineer."
  type        = string
}

variable "momento_http_service_name" {
  description = "[Optional] The service name of the Momento HTTP VPC endpoint. This is given to you by a Momento engineer."
  type        = string
  default     = "None"
}

variable "subnet_ids" {
  description = "The IDs of subnets in which to create an endpoint network interface"
  type        = list(string)
}

variable "security_group_ids" {
  description = "The IDs of security groups to associate with the endpoint network interface"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC in which the endpoint will be used"
  type        = string
}

# Momento Service VPC Endpoint
resource "aws_vpc_endpoint" "momento_service_vpc_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = var.momento_service_name
  vpc_endpoint_type = "Interface"
  subnet_ids        = var.subnet_ids
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
}

# Optional Momento HTTP VPC Endpoint
resource "aws_vpc_endpoint" "momento_http_service_vpc_endpoint" {
  count             = var.momento_http_service_name != "None" ? 1 : 0
  vpc_id            = var.vpc_id
  service_name      = var.momento_http_service_name
  vpc_endpoint_type = "Interface"
  subnet_ids        = var.subnet_ids
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
}
