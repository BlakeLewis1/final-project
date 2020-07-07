resource "aws_vpc" "projectvpc" {
    cidr_block = var.cidr
    enable_dns_hostnames = var.dns_hostname

    tags = {
        Name = "projectvpc"
    }   
}

data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "PubnetA" {
    cidr_block = var.public_cidr_A
    availability_zone = data.aws_availability_zones.available.names[0]
    vpc_id = aws_vpc.projectvpc.id
    map_public_ip_on_launch = true

    tags = {
        Name = "PubnetA"
    }
}

resource "aws_subnet" "PubnetB" {
    cidr_block = var.public_cidr_B
    availability_zone = data.aws_availability_zones.available.names[1]
    vpc_id = aws_vpc.projectvpc.id
    map_public_ip_on_launch = true
  

    tags = {
        Name = "PubnetB"
    }
}

resource "aws_subnet" "jenkins_subnet" {
    cidr_block = var.jenkins_cidr
    availability_zone = data.aws_availability_zones.available.names[1]
    vpc_id = aws_vpc.projectvpc.id
    map_public_ip_on_launch = true
  

    tags = {
        Name = "PubnetB"
    }
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.projectvpc.id

  tags = {
    Name = "VPC Internet Gateway"
  }

}

resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.projectvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }

  tags = {
    Name = "Route Table for VPC"
  }
}

resource "aws_route_table_association" "pub_subA_rta" {
  subnet_id      = aws_subnet.PubnetA.id
  route_table_id = aws_route_table.vpc_rt.id
}

resource "aws_route_table_association" "pub_subB_rta" {
  subnet_id      = aws_subnet.PubnetB.id
  route_table_id = aws_route_table.vpc_rt.id
}
