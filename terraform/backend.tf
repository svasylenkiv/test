terraform {
  backend "s3" {
    bucket = "nord-common-terraform-bucket-i3jdpk"
    key    = "${var.environment}/terraform.tfstate"
    region = "us-east-1"
  }
}
