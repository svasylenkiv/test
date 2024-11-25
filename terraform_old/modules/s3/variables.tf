variable "project" {
  description = "The project name"
  type        = string
}

variable "environment" {
  description = "The environment (dev, stg, prd, etc.)"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The ACL of the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Whether versioning is enabled for the S3 bucket"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to force delete the bucket even if it contains objects"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
