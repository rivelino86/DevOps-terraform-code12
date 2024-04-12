provider "aws" {
  region = var.region
}

resource "aws_security_group" "sg1" {
    name = var.name
    description = var.description
    dynamic "ingress" {
        for_each = var.ports
        content {
            description = ingress.value.description
        from_port = ingress.value.port
        to_port = ingress.value.port
        protocol = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
        
        }
      
    }
    tags = {
        Name =var.tag_name
        Env =var.tag_env

    }
    
    
    /*ingress {
        description = "allow ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cidr_blocks
    }
    */

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }




  
}