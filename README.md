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

**Intial trello board :**

![image1](https://user-images.githubusercontent.com/64256460/86902655-2ac8f900-c106-11ea-8c4b-cba5f5c0c260.png)
In the intial trello this was one of the first things completed for the project along with the github repository in this image you can see how we have split up tasks between MOSCOW and you can also see the tasks being completed and the ones that are completed.

**Trello board after 2nd interval :**

![image2](https://user-images.githubusercontent.com/64256460/86902290-ab3b2a00-c105-11ea-824c-98c8e7c61ffd.png)
In the second interval you can see that more tasks have been completed since the last interval and you can also see that there tasks that have been added to the in progress part of the trello

**Trello board after 3rd interval :**

![image3](https://user-images.githubusercontent.com/64256460/86905837-901ee900-c10a-11ea-8f32-0f9da5630e7c.png)
we included a new column for issues with the project so that these could be seen by the group and therefore be able tackle more specific issues with development 

**Final Trello Board :**

![image4](https://user-images.githubusercontent.com/64256460/86958257-c6348b00-c153-11ea-9c58-944453333d96.png)


---
## Risk Assessment
[RA](https://github.com/BlakeLewis1/final-project/blob/dev/Documents/Project%20RA%20-%20Sheet1.pdf)

linked above is the risk assessment for the project for ease of viewing it is reccomended that you download the file.

This risk assessment displays the different possible risks that could occur during the development of our project the assessment is to be updated at different  time  intervals whilst developing our solution to be able to give an insight of how each risk progressed we have added a risk level which essentially is a sum of (**liklihood**) the possibility of the risk happening and (**impact**) the damage level the risk would have on the project if it did occur.



**initial interval 02/07/20 ~ 04/07/20**



| Risk              | Risk Statment | Response Stratergy                                                                  | Objective                                         | likelihood   | Impact      | Risk Level |
| :---------------- | :------------ | :---------------------------------------------------------------------------------- | :------------------------------------------------ | :---------: | :---------: | :--------: |
| Kubernetes networking unsuccessful| The application wouldn't be able to deploy      | understand how k8s works                                                           | kubernetes enables the app to run                         | 80%   | High     | 90%         |
| Exceeding the budget    | the resources used cost money to run    | use cost effective resources for deployment                               | keep the cost of deployment low                  | 50% | High        | 60%       |
| Exceeding the time limit  | If we go over the time limit then the project will not pass   |Use the scrum feature of sprints to complete tasks                  | Split work up into intervals            | 25%     | High      | 30%    |
| Exposed keys     | if keys are exposed , unauthorised access could occur   | maintain that best practises are used for version control    | maintain that best practises are used   | 70%| High        | 80%        |
| Branch conflicts       | too many merge conflicts and deployment will be halted    | push working versions of code on to the master                  | make use of the branch feature in github correctly                 | 60%      | High     | 70%          |
| Jenkins password exposed | if jenkins is exposed the app would be vunerable     | use best practices to keep passwords secure                              | ensure password is not exposed          | 40%    | High      | 50%          |
| AWS sever exposed     | if exposed there is a risk that the app could be deleted     | make sure users with access are authorised                                        | Make IAM Users for team members only   | 20%     | High       | 25%          |
|  Docker images not updating  | if it happens the rolling update isnt working   | make sure that docker images are updated  | app works correctly with data          | 70%      | High        | 80%         |
| Jenkins pipeline   | if this occurs the app wont run correctly     | add a github webhook | Have a webhook that works   | 40%    | High     | 50%         |
| Subnet cidr id taken  | if this occurs the app wont work    | use a distinctive cidr id                    | make sure the eks cluster is able to communicate   | 60%   | High        | 70%         |
|

**2nd Interval 04/07/20 ~ 06/07/20**

| Risk              | Risk Statment | Response Stratergy                                                                   | Objective                                         | likelihood   | Impact      | Risk Level |
| :---------------- | :------------ | :---------------------------------------------------------------------------------- | :------------------------------------------------ | :---------: | :---------: | :--------: |
| Kubernetes networking unsuccessful| The application wouldn't be able to deploy      | understand how k8s works                                                           | kubernetes enables the app to run                         | 70%   | High     | 80%         |
| Exceeding the budget    | the resources used cost money to run    | use cost effective resources for deployment                               | keep the cost of deployment low                  | 40% | High        | 50%       |
| Exceeding the time limit  | If we go over the time limit then the project will not pass   |Use the scrum feature of sprints to complete tasks                  | Split work up into intervals            | 10%     | High      | 10%    |
| Exposed keys     | if keys are exposed , unauthorised access could occur   | maintain that best practises are used for version control    | maintain that best practises are used   | 50%| High        | 60%        |
| Branch conflicts       | too many merge conflicts and deployment will be halted    | push working versions of code on to the master                  | make use of the branch feature in github correctly                 | 40%      | High     | 50%          |
| Jenkins password exposed | if jenkins is exposed the app would be vunerable     | use best practices to keep passwords secure                              | ensure password is not exposed          | 30%    | High      | 35%          |
| AWS sever exposed     | if exposed there is a risk that the app could be deleted     | make sure users with access are authorised                                        | Make IAM Users for team members only   | 10%     | High       | 10%          |
|  Docker images not updating  | if it happens the rolling update isnt working   | make sure that docker images are updated  | app works correctly with data          | 60%      | High        | 70%         |
| Jenkins pipeline   | if this occurs the app wont run correctly     | add a github webhook | Have a webhook that works   | 40%    | High     | 50%         |
| Subnet cidr id taken  | if this occurs the app wont work    | use a distinctive cidr id                    | make sure the eks cluster is able to communicate   | 55%   | High        | 65%         |
|

**3rd Interval 06/07/20 ~ 08/07/20**

| Risk              | Risk Statment | Response Stratergy                                                                   | Objective                                         | likelihood   | Impact      | Risk Level |
| :---------------- | :------------ | :---------------------------------------------------------------------------------- | :------------------------------------------------ | :---------: | :---------: | :--------: |
| Kubernetes networking unsuccessful| The application wouldn't be able to deploy      | understand how k8s works                                                           | kubernetes enables the app to run                         | 60%   | High     | 70%         |
| Exceeding the budget    | the resources used cost money to run    | use cost effective resources for deployment                               | keep the cost of deployment low                  | 30% | High        | 35%       |
| Exceeding the time limit  | If we go over the time limit then the project will not pass   |Use the scrum feature of sprints to complete tasks                  | Split work up into intervals            | 10%     | High      | 10%    |
| Exposed keys     | if keys are exposed , unauthorised access could occur   | maintain that best practises are used for version control    | maintain that best practises are used   | 40%| High        | 50%        |
| Branch conflicts       | too many merge conflicts and deployment will be halted    | push working versions of code on to the master                  | make use of the branch feature in github correctly                 | 20%      | High     | 25%          |
| Jenkins password exposed | if jenkins is exposed the app would be vunerable     | use best practices to keep passwords secure                              | ensure password is not exposed          | 10%    | High      | 10%          |
| AWS sever exposed     | if exposed there is a risk that the app could be deleted     | make sure users with access are authorised                                        | Make IAM Users for team members only   | 50%     | High       | 60%          |
|  Docker images not updating  | if it happens the rolling update isnt working   | make sure that docker images are updated  | app works correctly with data          | 70%      | High        | 80%         |
| Jenkins pipeline   | if this occurs the app wont run correctly     | add a github webhook | Have a webhook that works   | 50%    | High     | 60%         |
| Subnet cidr id taken  | if this occurs the app wont work    | use a distinctive cidr id                    | make sure the eks cluster is able to communicate   | 30%   | High        | 40%         |
| 

**Final Interval 08/07/20 ~ 10/07/20**

| Risk              | Risk Statment | Response Stratergy                                                                 | Objective                                         | likelihood   | Impact      | Risk Level |
| :---------------- | :------------ | :---------------------------------------------------------------------------------- | :------------------------------------------------ | :---------: | :---------: | :--------: |
| Kubernetes networking unsuccessful| The application wouldn't be able to deploy      | understand how k8s works                                                           | kubernetes enables the app to run                         | 10%   | High     | 10%         |
| Exceeding the budget    | the resources used cost money to run    | use cost effective resources for deployment                               | keep the cost of deployment low                  |20% | High        | 40%       |
| Exceeding the time limit  | If we go over the time limit then the project will not pass   |Use the scrum feature of sprints to complete tasks                  | Split work up into intervals            | 10%     | High      | 10%    |
| Exposed keys     | if keys are exposed , unauthorised access could occur   | maintain that best practises are used for version control    | maintain that best practises are used   | 20%| High        | 30%        |
| Branch conflicts       | too many merge conflicts and deployment will be halted    | push working versions of code on to the master                  | make use of the branch feature in github correctly                 | 10%      | High     | 10%          |
| Jenkins password exposed | if jenkins is exposed the app would be vunerable     | use best practices to keep passwords secure                              | ensure password is not exposed          | 10%    | High      | 10%          |
| AWS sever exposed     | if exposed there is a risk that the app could be deleted     | make sure users with access are authorised                                        | Make IAM Users for team members only   | 10%     | High       | 10%          |
|  Docker images not updating  | if it happens the rolling update isnt working   | make sure that docker images are updated  | app works correctly with data          | 30%      | High        | 40%         |
| Jenkins pipeline   | if this occurs the app wont run correctly     | add a github webhook | Have a webhook that works   | 10%    | High     | 10%         |
| Subnet cidr id taken  | if this occurs the app wont work    | use a distinctive cidr id                    | make sure the eks cluster is able to communicate   | 10%   | High        | 10%         |
| 

This risk assessment displays the different possible risks that could occur during the development of our project the assessment is to be updated at different  time  intervals whilst developing our solution to be able to give an insight of how each risk progressed we have added a risk level which essentially is a sum of (**likelihood**) the possibility of the risk happening and (**impact**) the damage level the risk would have on the project if it did occur.

we also ensured that we revisited the risk assessment and addressed any clear issues in the development one instance of this is when we revisited the cidr block risk and came up with a solution for it in the 3rd interval of the project which saw the liklihood fall dramatically.

---
## Architecture


### architecture design 
**initial architecture design**

![iad](https://github.com/BlakeLewis1/final-project/blob/dev/Documents/intial%20architecture%20design%20.png)

**final architecture design**

![ad](https://github.com/BlakeLewis1/final-project/blob/dev/Documents/architecture%20design.png)

we had to change our initial design to make sure that the database was able to be displayed correctly through the front end of the app to do this we employed a new solution for the app. this included utilising a gcp mysql instance to hold the database.

We needed to utilise the gcp sql rather than using the amazon rds system as we encountered persistent issues with connections between front and back ends whilst attempting to use the amazon rds system.


### Technology comparisons

**terraform**

When deciding which tool to use to form our architecture, we had to choose terraform or cloud formation we focused on personal preference in the group and went with what the majority of the group felt comfortable with and with that in mind the group decided that terraform was the best tool to use for setting up the infrastructure of the deployment for the app on of the main reasons we decided to use terraform was that it was easier to use .ts files rather than using cloudformation and  .yml files because yaml files are prone to failing when there are indentation errors in the code. Terraform also validates the config file before running it. 

**kubernetes**

The reason we chose to use kubernetes is due to its advanced monitoring and ability to manage and scale up large clusters of pods. Kubernetes manages nodes and performs constant health checks and reboot of failing pods. EKS can easily perform rolling updates with no downtime.  Due to the benefits large organisations all use it over docker swarm. Downside we had very little experience and understanding of pod communication and service types. 
In addition to this another reason why we decided to use kubernetes over docker swarm was that it was easier to update images by using kubectl apply to make updates to the image whilst with docker you would be required to build the image using docker image build  which would take up time rebuilding the image.

**Jenkins_Pipeline**

Jenkins pipeline

We have chosen to use Jenkins due to personal preference and also due to the benefits of using a Jenkins file.

Jenkinsfile benefits include:
Code review/iteration on the Pipeline
Audit trail for the Pipeline




---
## Deployment
The Ci Pipeline and Process chain diagram showcased below represent a deployment strategy after the application has already be developed and handed over to the DevOps Engineers.

![](Documents/CiPipline.png)

The diagram above, displays the deployment of our project. 

Jenkins. A Pipeline build triggered by the version control system Github, initiates the process of which the final stage of the build will deploy the applications using Amazons elastic Kubernetes services. 

Eks. The Eks Cluster has three separate Deployments, frontend application, backend application, and NGINX. The NGINX will work as a Load balancer within the EKS cluster, directing all traffic to the front end of the application.

An multi provider approach was considered due to the competitiveness of todays cloud marketplace. This was completed by utilising an GCP Mysql database and Aws resources applied by terraform. This skillset showcases flexibility of the business opportunities group3 can provide.

![](Documents/ProcessChainDiagram.png)

To elaborate on some of the technologies used in the CI pipeline is as follows:

* Microsoft Teams - to host our Daily Scrums.
* Trello - Project Tracking tool. This tool was used to create our sprints and allow the team to keep up to date with what work is being done.
* Terraform - to create the aws ecosystem along with a GCP Mysql Database. 
* Trello board to keep track of the project progress.
* GitHub: allows the source code to be stored and also webhooks are created which trigger the Ci server to build the pipeline and run the application.
* Jenkins
* Maven - test the backend application using the pre-configured test files.
* Docker - containerises our application.
* EKS - orchestrates the container created by docker. which then deploys the application.
* AWS - hosting our resources and enabling monitoring so that the group can be emailed alarmed.

---
## Testing
![](Documents/testoutput.PNG)

Testing for the backend was built into the Jenkins pipeline. We run a mvn test which is then displayed in Jenkins logs where it can be checked for any errors.
Due to time constraints and concern for wasting machine resources the built-in testing for the frontend was not implemented into Jenkins.
We encountered an issue when it came to implementing automated testing with the front-end application

---
## Monitoring
For the project we looked at our budget and decided it would be beneficial to enable advanced monitoring in AWS cloud watch for our EC2. This enabled us to setup alerts that would constantly monitor the machine. Whenever an alarm is triggered an email is sent too everybody in the group lowering the risk of the alarm being missed.
We setup 2 alarms for our EC2 instance
![](Documents/highcpualarm.PNG)
This alarm would trigger if cpu utilization of the machine exceeds 75% which should be very unlikely due to the workload being balanced between multiple machines
![](Documents/machinefailalarm.PNG)
This alarm was created to warn everyone if the machine powers off for longer than 1 minute unexpectedly.

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
