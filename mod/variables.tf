variable "aws_region" {
  description = "AWS Region"
  default     = "us-west-2"
}

variable "project_name" {
  description = "The project name"
  type        = string
}

variable "environment" {
  description = "The environment (dev, stg, prd, hfx)"
  type        = string
}
