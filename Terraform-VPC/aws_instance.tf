# Bastion Host (Public EC2)
resource "aws_instance" "bastion_host" {
  ami                    = "ami-062f0cc54dbfd8ef1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  associate_public_ip_address = true
  key_name               = "Terraform-key"

  tags = {
    Name = "BastionHost"
  }
}


# App Server (Private EC2)
resource "aws_instance" "app_server" {
  ami                    = "ami-062f0cc54dbfd8ef1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = "Terraform-key"

  tags = {
    Name = "AppServer"
  }
}

