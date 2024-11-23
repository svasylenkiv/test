module "vpc" {
  source              = "./modules/vpc"
  project             = "nord"
  environment         = "dev"
  cidr_block          = "10.0.0.0/16"
  public_subnet_count = 2
}

module "ec2" {
  source        = "./modules/ec2"
  project       = "nord"
  environment   = "dev"
  ami_id        = "ami-12345678"
  instance_type = "t3.micro"
  subnet_id     = module.vpc.public_subnets[0]
  user_data     = <<-EOT
                #!/bin/bash
                echo "Hello, World!" > /var/www/html/index.html
                EOT
}
