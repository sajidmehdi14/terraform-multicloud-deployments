module "aws-compute" {
//  source = "git::git@github.com:sajidmehdi14/Terraform-modules.git//aws_EC2?ref=v1.0"
// v1.0 == v4.1
// Modules starting with git tags 4.x are for production
//  source = "git::git@github.com:sajidmehdi14/Terraform-modules.git//aws_EC2?ref=v4.1"
  source = "git::https://github.com/sajidmehdi14/Terraform-modules.git//aws_EC2?ref=v4.1"

  type = "t2.micro"
  ami = data.aws_ami.ami.id
  az = "us-east-1a"
  fwname = "sg_prod" # sg-prod gives error with -
  inport = 80
  inprot = "tcp"
//  ingressmap = var.ingressprod
  secgrp = module.aws-compute.secgrp
  tags = "ec2-prod"

}

//module "gcp-compute" {
//  source = "git::git@github.com:sajidmehdi14/Terraform-modules.git//gcp_VM?ref=v1.0"
//}