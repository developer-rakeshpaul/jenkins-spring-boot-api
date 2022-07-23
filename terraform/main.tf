terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws-region
  access_key = var.aws-access-key
  secret_key = var.aws-secret-key
}


module "vpc" {
  source             = "./vpc"
  name               = var.name
  cidr               = var.cidr
  private_subnets    = slice(var.private_subnet_cidr_blocks, 0, var.private_subnet_count)
  public_subnets     = slice(var.public_subnet_cidr_blocks, 0, var.public_subnet_count)
  availability_zones = var.availability_zones
  environment        = var.environment
}

