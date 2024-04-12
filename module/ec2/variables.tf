variable "region" {
    default = "us-east-1"
  
}
variable "ami" {
    default = "ami-0a699202e5027c10d"
  
}
variable "availability_zone" {
  default =  "us-east-1a"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
    description = "Name of my key"
  default = "wordpress"
}
variable "tags_name" {
default = "My-server"
}
