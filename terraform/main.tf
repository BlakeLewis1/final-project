provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "vpc" {
  source = "./VPC"
}

module "sg" {
  source = "./SG"
  vpc_id = module.vpc.vpc_1
}

module "ec2" {
  source = "./EC2"
  public_subnet_id       = module.vpc.subnet_A_id
  vpc_security_group_ids = module.sg.aws_sg_id
}

module "eks" {
  source = "./EKS"
  subnets = ["${module.vpc.subnet_A_id}", "${module.vpc.subnet_B_id}"]
  sg = ["${module.sg.aws_sg_id}"]
}
