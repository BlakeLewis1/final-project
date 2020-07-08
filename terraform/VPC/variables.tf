variable "cidr" {
    description = "cidr block for VPC"
    default = "10.50.0.0/16"
}

variable "dns_hostname" {
    description = "dns hostname"
    default = true 
}

variable "public_cidr_A" {
    description = "cidr for public subnet A"
    default = "10.50.1.0/24"
}


variable "public_cidr_B" {
    description = "cidr for public subnet B"
    default = "10.50.2.0/24"
}

variable "jenkins_cidr" {
    description = "cidr for jenkins"
    default = "10.50.3.0/24"
}