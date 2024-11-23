provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  count = var.terraform ? 1 : 0

  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = merge(
    {
      Name     = "${var.project}-${var.environment}-srv-${count.index + 1}"
      Project  = var.project
      Env      = var.environment
      OS       = var.instance_os
      CreatedBy = var.createdby
    },
    var.tags
  )

  # Add other settings as needed
  key_name      = "my-key-pair" # Replace with your actual key pair name
  subnet_id     = "subnet-0bb1c79de3EXAMPLE" # Replace with your actual subnet ID
  security_groups = ["default"] # Replace with actual security group(s)
}
