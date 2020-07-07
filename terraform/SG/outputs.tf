output "aws_sg_id" {
  value = aws_security_group.projectsg.id
}

output "jenkins_security_group_ids" {
  value = aws_security_group.jenkinssg.id
}
