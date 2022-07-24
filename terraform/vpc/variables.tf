variable "name" {
  description = "the name of your stack, e.g. \"demo\""
  default = "aws-learning"
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
  default = "dev"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
}

variable "public_subnets" {
  description = "List of public subnets"
}

variable "private_subnets" {
  description = "List of private subnets"
}

variable "availability_zones" {
  description = "List of availability zones"
}
