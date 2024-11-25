provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source        = "./modules/vpc"
  project_name  = var.project_name
  environment   = var.environment
}

module "security_groups" {
  source        = "./modules/security_groups"
  project_name  = var.project_name
  environment   = var.environment
}

module "ec2" {
  source        = "./modules/ec2"
  project_name  = var.project_name
  environment   = var.environment
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
  security_groups = module.security_groups.security_group_ids
}
