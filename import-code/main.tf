resource "aws_instance" "web" {
  ami                                  = "ami-033a1ebf088e56e81"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress1"
  monitoring                           = false
  security_groups                      = ["sg-03f396ed54a4e6d7e"]
  subnet_id                            = "subnet-026f75c8309cd5de3"
  tags = {
    Name = "created by terraform"
  }
  
  
}