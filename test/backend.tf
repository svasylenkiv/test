terraform {
  backend "s3" {
    bucket = "nord-common-terraform-bucket-hrt0sz"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
