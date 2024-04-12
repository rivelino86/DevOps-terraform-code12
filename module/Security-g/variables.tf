variable "region" {
    default = "us-east-1"
}
variable "name" {
    description = "Define the name of your security group"
    default = "Devop-sg"
  
}
variable "description" {
    default = "allow ssh and httpd"
  
}
 variable "cidr_blocks" {
     default = ["0.0.0.0/0"]
  
 }

# variable "port_protocol" {

# }
# variable "ingress_description" {

# }
# variable "ingress_protocol" {
  
# }
variable "ports" {
  description = "List of ports to open in the security group"
  default = "ports"
}
variable "tag_name" {
 default = "Devop-sg"
}
variable "tag_env" {
  default = "Dev"
}