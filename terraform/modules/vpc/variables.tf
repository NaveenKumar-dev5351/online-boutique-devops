variable "project" {
    type = string
    description = "Project name used for resource naming and tagging"
}
variable "environment" {
    type = string 
    description = "Environment name (dev/prod)"
}
variable "cidr_block" {
    default = "10.0.0.0/16"
    description = "CIDR block for the VPC"
}
variable "public_subnet_cidrs" {
    type = list(string)
    description = "List of CIDR blocks for public subnets"
}
variable "private_subnet_cidrs" {
    type = list(string)
    description = "List of CIDR blocks for private subnets"
}
variable "database_subnet_cidrs" {
    type = list(string)
    description = "List of CIDR blocks for database subnets"
}
variable "common_tags" {
    type        = map(string)
    description = "Common tags applied to all resources"
    default     = {}
}
