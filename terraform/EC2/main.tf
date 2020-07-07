resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.type
    key_name = var.key_name
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = [var.vpc_security_group_ids]
    associate_public_ip_address = true
    user_data = data.template_file.installing_jenkins.rendered
  
    tags = {
        Name = "Project EC2"
}

}
data "template_file" "installing_jenkins" {
  template = file("../terraform/EC2/jenkins.sh")
}

#resource "aws_instance" "jenkins" {
 #   ami = var.ami
  #  instance_type = var.type
   # key_name = var.key_name
    #subnet_id = var.jenkins_subnet_id
    #vpc_security_group_ids = [var.jenkins_security_group_ids]
    #associate_public_ip_address = true
    #user_data = data.template_file.installing_jenkins.rendered
  
   # tags = {
    #    Name = "Jenkins EC2"
#}

#}
#data "template_file" "installing_jenkins" {
 # template = file("../terraform/EC2/jenkins.sh")
#}