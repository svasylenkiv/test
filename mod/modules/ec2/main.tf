resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_group_ids     = var.security_group_ids
  associate_public_ip_address = true
  tags = {
    Name        = "${var.project_name}-${var.environment}-ec2"
    Environment = var.environment
  }
}

output "instance_id" {
  value = aws_instance.web.id
}
