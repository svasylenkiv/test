variable "project" {
  description = "Назва проекту"
  type        = string
}

variable "environment" {
  description = "Середовище для розгортання (наприклад, dev, stage, prod)"
  type        = string
}

variable "cidr_block" {
  description = "CIDR блок для VPC"
  type        = string
}

variable "region" {
  description = "Регіон AWS"
  type        = string
}
