provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami = var.ami
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  key_name = var.key_name
 # security_groups = ""
  tags = {
    Name = var.tags_name
  }
  
}
