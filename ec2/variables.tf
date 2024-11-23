variable "project" {
  description = "Назва проєкту"
  type        = string
}

variable "aws_region" {
  description = "Region"
  type        = string
}

variable "environment" {
  description = "Середовище (dev, stg, prod)"
  type        = string
}

variable "ami_id" {
  description = "AMI для EC2"
  type        = string
}

variable "instance_type" {
  description = "Тип EC2 інстансу"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "ID сабнету, в якому буде створено інстанс"
  type        = string
}

variable "user_data" {
  description = "Скрипт user_data для інстансу"
  type        = string
  default     = ""
}
