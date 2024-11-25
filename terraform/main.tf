terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "vpc" {
  source      = "./modules/vpc"
  project     = var.project
  environment = var.environment
  cidr_block  = var.cidr_block

  tags = {
    name    = "${var.project}-${var.environment}-vpc"
    project = var.project
    env     = var.environment
  }
}
