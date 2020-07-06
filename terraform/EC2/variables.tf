variable "ami" {
    description = "instance image"
    default = "ami-089cc16f7f08c4457"
}

variable "type" {
    description = "instance size"
    default = "t2.micro"
}

variable "key_name" {
    description = "key pair to SSH into instance"
    default = "awskey"
}

variable "public_subnet_id" {
    default = "default value"
}

variable "vpc_security_group_ids" {
    default = "default value"
}


variable "vpc_id" {
    default = "default value"
}