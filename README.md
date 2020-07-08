# final-project-team3

## Pet-Clinic Web Application
### Contents
1. [Executive Summary & Critical Review](#Executive-Summary-&-Critical-Review)
    * Aim  
    * Our Method
    * Summary

2. [Project Tracking](#Project-Tracking)
    * Initial sprint 
    * Final sprint 

3. [Risk Assessment](#Risk-Assessment)

4. [Technologies used](#Technologies-used)
    * Technology comparisons

5. [Architecture](#Architecture) 
    * sevrice architectrue diargram 
    * CI Pipeline
    * Technology comparisons

6. [Deployment](#Deployment)
    * Toolset
    * CI Server Implementation
    * Security
    * Branch and Merge Log


7. [Testing](#Testing)


8. [Conclusion](#conclusion)
    * Identified Issues
    * Future Improvements

8. [Set up guide](#Set-up-guide)

9. [Acknowledgements](#Acknowledgements)
    * Author
    * License

---
## Executive Summary & Critical Review
### Aim 
The aim of this group project was to plan, design and implement a solution for automating the development workflows and deployments of two external applications. 
* Spring-Petclinic-Angular - frontend Client of the application, Developed with angular js
* Spring-Petclinic-Rest - backend API of the application, Developed with Java.

Upon Deployment a set of predefined objectives regarding what we have learnt must be considered.

* What resources/services will work best for the deployment with clear comparison and justification.
* Multiple environment support in order for a developer to test new features before merging to the main branch.
* Deployment of a robust system. This will allow improvements to be made without destroying the application and effecting the experience of the user.
* Overall cost of Deployment will be documented using monthly estimates. Along this this how the Deployment can be made more efficiently. 
### Our Method
The External applications work in a way that the frontend will communicate with the backend and request data. this data is then displayed on the frontend page. For this to work the group has utilised the following architecture.
* IAAS - Terraform to create the AWS ecosystem and Configure the environment of the Virtual machines.
* EKS to orchestrate the containers which will run the applications.
* CI Server - Jenkins functioning as pipeline with Webhooks from the version control GIt Hub, to trigger builds.

### Summary 

---
## Project Tracking

    * Initial Trello Board 
![image1](https://user-images.githubusercontent.com/64256460/86902655-2ac8f900-c106-11ea-8c4b-cba5f5c0c260.png)
    * Trello board after 2nd interval:
![image2](https://user-images.githubusercontent.com/64256460/86902290-ab3b2a00-c105-11ea-824c-98c8e7c61ffd.png)
    * Trello board after 3rd interval:
![image3](https://user-images.githubusercontent.com/64256460/86905837-901ee900-c10a-11ea-8f32-0f9da5630e7c.png)
      we included a new column for issues with the project so that these could be seen by the group and therefore be able tackle more specific issues with development 
    * Final Trello Board

---
## Risk Assessment
[RA](https://github.com/BlakeLewis1/final-project/blob/dev/Documents/Project%20RA%20-%20Sheet1.pdf)

linked above is the risk assessment for the project for ease of viewing it is reccomended that you download the file.

This risk assessment displays the different possible risks that could occur during the development of our project the assessment is to be updated at different  time  intervals whilst developing our solution to be able to give an insight of how each risk progressed we have added a risk level which essentially is a sum of (**liklihood**) the possibility of the risk happening and (**impact**) the damage level the risk would have on the project if it did occur.


---
## Architecture


### Technology comparisons

![image](https://user-images.githubusercontent.com/64256460/86617129-b7f93a00-bfae-11ea-90b5-4f84591bc2a9.png)

The decision for containerisation orchestration was to choose between Docker Swarm and Kubernetes. 

Kubernetes, otherwise known as k8s, is an open-source solution for automating deployments of containerized applications which is made by Google. Kubernetes has many solutions for managing and scaling very large quantities of containers by grouping them into manageable units. Because Kubernetes is open-source, it can be deployed as an on-premises, hybrid or public cloud solution.  


Docker swarm is docker's containerisation orchestration tool. Like kubernetes, is open source swarm is designed around four core principles. 

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

---
## Deployment

---
## Testing

---
## Conclusion

---
## Set up guide

---

##  Acknowledgments 

The QA Consultants for helping with our Development and teaching the required skills to build this application.

##  Author

Jason sinclair, Misbah Mehmood, Jonathan Vaughan, Blake Lewis, Tom Petty

## MIT License

Copyright (c) 2020 Group 3

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
