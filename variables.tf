variable "project" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, stg, prd, etc.)"
  type        = string
}

variable "terraform" {
  description = "Boolean to enable Terraform resource creation"
  type        = bool
  default     = true
}

variable "createdby" {
  description = "Name of the person who created the resources"
  type        = string
}

variable "instance_os" {
  description = "Operating system for the instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "tags" {
  description = "Additional tags for resources"
  type        = map(string)
}
