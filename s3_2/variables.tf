variable "project" {
  description = "The name of the project"
  type        = string
  default     = "default_project_name"
}

variable "aws_region" {
  type        = string
  description = "AWS region for the S3 bucket"
}

variable "env" {
  type = string
}
