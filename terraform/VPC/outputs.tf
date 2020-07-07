output "vpc_1" {
    value = aws_vpc.projectvpc.id
}

output "subnet_A_id" {
    value = aws_subnet.PubnetA.id
}


output "subnet_B_id" {
    value = aws_subnet.PubnetB.id
}

output "jenkins_id" {
    value = aws_subnet.jenkins_subnet.id
}