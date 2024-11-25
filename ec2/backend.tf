terraform {
  backend "s3" {
    bucket = "nordterraformbucket"
    key    = "${var.environment}/terraform.tfstate"
    region = "us-east-1"
  }
}
