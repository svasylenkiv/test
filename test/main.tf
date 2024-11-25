data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "arc_xhitecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

}
