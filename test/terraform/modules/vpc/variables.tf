variable "project" {
  description = "Назва проєкту"
  type        = string
}

variable "environment" {
  description = "Середовище (dev, stg, prod)"
  type        = string
}

variable "cidr_block" {
  description = "CIDR блок для VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Кількість публічних сабнетів"
  type        = number
  default     = 2
}
