variable "project" {
  description = "The name of the project"
  type        = string
  default     = "nord"
}

variable "aws_region" {
  type        = string
  description = "AWS region for the S3 bucket"
  default     = "us-east-1"
}

variable "env" {
  type        = string
  description = "Environment name (e.g., dev, stg, prd)"
  default     = "common"
}
