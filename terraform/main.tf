provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
  version = "~> 2.0"
}

provider "google" {
  credentials = file("~/.google.json")
  project     = "group-project"
  alias = "googledb"
  region      = "eu-west2"
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
  #jenkins_subnet_id       = module.vpc.jenkins_id
  vpc_security_group_ids = module.sg.aws_sg_id
  jenkins_security_group_ids = module.sg.jenkins_security_group_ids
}

module "eks" {
  source = "./EKS"
  region = var.region
  subnets = ["${module.vpc.subnet_A_id}", "${module.vpc.subnet_B_id}"]
  sg = ["${module.sg.aws_sg_id}"]
}

module "database" {
  source = "./Database"
}