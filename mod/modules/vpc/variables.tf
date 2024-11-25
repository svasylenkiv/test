variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_az" {
  description = "The availability zone for the subnet"
  default     = "us-west-2a"
}

variable "project_name" {
  description = "The project name"
  type        = string
}

variable "environment" {
  description = "The environment (dev, stg, prd, hfx)"
  type        = string
}
