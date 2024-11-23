terraform {
  backend "s3" {
    bucket      = "nordterraformbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
