module "ec2" {
    source = "../module/ec2"
   
}
module "security_group" {
  source = "../module/sg"
  ports = [
    { protocol = "tcp", port = 22, description = "open ssh port", cidr_blocks = ["0.0.0.0/0"] },
    { protocol = "tcp", port = 80, description = "open httpd port", cidr_blocks = ["0.0.0.0/0"] },
    { protocol = "tcp", port = 8080, description = "open the port of jenkins", cidr_blocks = ["0.0.0.0/0"] }


  ]
  tag_env  = "Dev"
  tag_name = "Devop-sg"

}
/*module "security_group_ssh" {
    source = "../module/sg"
    ingress_protocol = "tcp"
    ingress_description = "allow ssh"
    port_protocol = 22
  
}
*/
# variable "ports" {
#     default = [
#         {protocol = "tcp",port =22,description ="open ssh port",cidr_blocks =["0.0.0.0/0"]},
#         {protocol ="tcp",port =80,description ="open httpd port",cidr_blocks =["0.0.0.0/0"]},
#         {protocol ="tcp",port =8080,description ="open the port of jenkins",cidr_blocks =["0.0.0.0/0"]}


#     ]

#     }