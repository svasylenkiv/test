resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name    = "${var.project}-${var.environment}-srv"
    Project = var.project
    Env     = var.environment
  }

  user_data = var.user_data
}
