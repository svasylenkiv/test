provider "aws" {
  region = var.aws_region
}

# Генерація випадкового рядка
resource "random_string" "bucket_suffix" {
  length  = 6  # Довжина випадкового рядка
  upper   = false
  lower   = true
  special = false
}

# Оголошення бакета з випадковим суфіксом
resource "aws_s3_bucket" "common_bucket" {
  bucket = "${var.project}-${var.env}-terraform-bucket-${random_string.bucket_suffix.result}"

  tags = {
    Name    = "${var.project} Common Terraform Bucket"
    Project = var.project
  }
}