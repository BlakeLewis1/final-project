# final-project-team3

![image](https://user-images.githubusercontent.com/64256460/86617129-b7f93a00-bfae-11ea-90b5-4f84591bc2a9.png)
The decision for containerisation orchestration was to choose between Docker-Swarm and Kubernetes. 

Kubernetes, otherwise known as k8s , is an open-source solution for automating deployments of containerized applications which is made by Google. Kubernetes has many solutions for managing and scaling very large quantities of containers by grouping them into manageable units. Because Kubernetes is open-source, it can be deployed as an on-premises, hybrid or public cloud solution.  

 
Docker swarm, is dockers containerisation orchestration tool and like kubernetes is open source swarm is designed around four core principles. 

Less cluttered/heavy and with just working methodology 

No Single Point of Failure option for Docker Swarm 

Secure due to auto-generation of security certificates. 

Compatibility with Backward versions easily. 

 The comparison 

There are fundamental differences even though both are containerisation orchestration tools.  

Swarm focuses on ease of use with integration with Docker core components and also has an easier installation process while Kubernetes has a more manual installation process and remains open and modular. Kubernetes is also older than docker and therefore there are years of expert experience at hand to help.  

One of the main reasons why we decided to use kubernetes over docker swarm was that it was easier to update images by using kubectl apply to make updates to the image whilst with docker you would be required to build the image using docker image build  which would take up time rebuilding the image.  

![image](https://user-images.githubusercontent.com/64256460/86617227-d95a2600-bfae-11ea-8424-80728af05f24.png)

Terraform allows you to control your infrastructure.Terraform uses HCL (HashiCorp Configuration Language), developed to strike a balance between being human readable as well as machine-friendly. Using infrastructure as code this means that the code used can be of a high level to describe and manage infrastructure. 

In Terraform, you can run a ‘plan’ step before applying any changes. This step tells you precisely what is going to change and why and also has colours highlighting these changes. 

CloudFormation is a tool from AWS that allows you to spin up resources effortlessly. You define all the resources you want AWS to spin up in a blueprint document made in either JSON or YAML. With CloudFormation you are able to see and design your infrastructure with the designer. 

When deciding which tool to use , terraform or cloud formation we focused on personal preference in the group and went with what the majority of the group felt comfortable with and with that in mind the group decided that terraform was the best tool to use for setting up the infrastructure of the deployment for the app on of the main reasons we decided to use terraform was that it was easier to use .ts files rather than using cloudformation and  .yml files because yaml files are prone to failing when there are indentation errors in the code. Terraform also validates the config file before running it. 

![image](https://user-images.githubusercontent.com/64256460/86617295-ed9e2300-bfae-11ea-8493-4e9095141900.png)

Terraform allows you to control your infrastructure.Terraform uses HCL (HashiCorp Configuration Language), developed to strike a balance between being human readable as well as machine-friendly. Using infrastructure as code this means that the code used can be of a high level to describe and manage infrastructure. 

In Terraform, you can run a ‘plan’ step before applying any changes. This step tells you precisely what is going to change and why and also has colours highlighting these changes. 

CloudFormation is a tool from AWS that allows you to spin up resources effortlessly. You define all the resources you want AWS to spin up in a blueprint document made in either JSON or YAML. With CloudFormation you are able to see and design your infrastructure with the designer. 

When deciding which tool to use , terraform or cloud formation we focused on personal preference in the group and went with what the majority of the group felt comfortable with and with that in mind the group decided that terraform was the best tool to use for setting up the infrastructure of the deployment for the app on of the main reasons we decided to use terraform was that it was easier to use .ts files rather than using cloudformation and  .yml files because yaml files are prone to failing when there are indentation errors in the code. Terraform also validates the config file before running it. 
