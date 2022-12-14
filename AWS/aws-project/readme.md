# Project 1. 
=============
# Problem Statement:
==================
You work for The-Cornelis Inc as a Solutions Architect, and based on the expansion of The-Cornelis Inc, the Management had decided that The-Cornelis inc should set up a new development, and production infrastructure in the cloud for every new project.

You have been tasked to ensure the following for a new Project:

# For Production VPC:
====================
1. Design and build a Five-tier Architecture. DONE
2. Create five subnets. Four of the Subnets should be Private with prod-app-sb-1 prod-app-sb-2, prod-DB-cache-sb, and prod-DB-sb and the last one should be a public subnet and name prod-web-sb. Configure the Subnet to have a 1 Public Route and 4 Private Route each for one subnets- DONE
3. Launch Instances in all the subnets and name them with the same name as the subnet they are launched in.- DONE
4. Allow the database cache and the database to send internet requests.- DONE
5. Ensure a highly secure Security Group using AWS Best Practices for Security Groups - DONE
6. Create VPC Endpoints for the S3 and Kinesis services and access the S3 objects in any bucket from within the VPC - Done

# For Development VPC:
====================
1. Design and build a Three-tier Architecture
2. Create 3 subnets. 2 of the Subnets should be Private with dev-app-sb, dev-db-sb and the last one should be a public subnet and name dev-web-sb. Configure the Subnet to have a 1 Public Route and 2 Private Route each for one subnets
3. Launch Instances in all the subnets and name them as with same name as dev-app-server,dev-db-server and dev-web-server
4. Create a peering connection between the production and the development networks
5. Ensure highly secure Security Group using AWS Best Practice for Security Groups
6. Setup a connection between the prod-db-sb and dev-db-sb

# Project 2: 
==================================================================


# Problem Statement: 
=====================

You work for XYZ Inc. Your company is working in on an application, and it requires secured web servers on linux to launch the application.

You are tasked to:

1. Create an instance in the us-east-1(North Virginia) region with the Linux OS and manage the requirement of web servers of your company using AMIs. Ensure the instance have the following application instanced.
    - Apache Web Server
    - Wget
    - Git 

2. Replicate the instance in the us-west-2(Oregon) region
3. Build two EBS volumes and attached to the instance in the us-east-1(N.Virginia) regions
4. Delete one volume after detaching it and extend the size of the other volume
5. Take a Backup of this EBS volume


# Project 3:
=====================
# Project Tasks
==================
Task 1: Create an Organization using AWS account.
Task 2: Invite an existing AWS account as member account to the AWS Organization and create a new aws account with organization.
Task 3: Create a member account within an Organization.
Task 4: Create Organizational Unit inside AWS Organization
Task 5: Architect Custom Service Control Policy for member accounts inside an Organization
Task 6: Attach Service Control Policy to member accounts
Task 7: Create Cloud Trail and configure it to log data for all accounts in an Organization to S3/CloudWatch 
Task 8: Switch Roles between Member account and Management account.


# Project 4 -  Designing a serverless web backend on AWS
==============
Josh works at  Company XZY that sells cleaning product online. XYZ currently have an application that processes order online and it is experiencing some issue, XYZ would like to find a solution that bring better resiliency, reduce operational overhead and as well as migrating the service to AWS. You have being tapped to help the company to architect the solution to the problem the company is facing.

You are expected to use services such as AWS Lambda, SQS, SNS, API gateway and more.

# Related Project: https://aws.amazon.com/getting-started/hands-on/build-serverless-web-app-lambda-apigateway-s3-dynamodb-cognito/
# Solution
===========
Step 1: You will first hear from the customer about their requirements and the problems that they are trying to solve with this migration. 

Step 2: Design the solution for this use case

Step 3: Create a POC using services such as 
    - Amazon API Gateway
    - AWS Lambda
    - Amazon Simple Queue Service (Amazon SQS) 
    - Amazon Simple Notification Service (Amazon SNS) 
    - Amazon DynamoDB.
# Resume Bullet Point - Architect or Design a highly resilience and decoupled serverless web backend solution on AWS



# Project 5 - Designing a serverless data analytics solution on AWS
============
You have been sent to help a customer that use QR code for loading restaurant menus. This customer wants to enhance their products by adding data analysis for better business intelligence solutions. Your tasked as AWS Solutions Architects is to provide AWS services that can help the customer to achieve his goals and also Architect the solutions for the customer.

Hint: The goal of the task is for your to learn AWS Data Analytics services like Amazon Athena, Amazon Kinesis, Amazon QuickSight, and more. 

# Project 6: - Designing a hybrid solution for container based workloads on AWS
==============

ASL LLC, an insurance company has some workloads running on premises they want to migrate to hybrid environment that is some of the workloads will remain on premise while the remaining would be migrated to AWS public Cloud. You have been informed advice the client on aws services that they would need in other to create a connection between on premise networking and the cloud.

# Project 7 - Designing a solution following account governance and management best practices
==============

A company in need of multi-account environment currently has everything running in the same account, while providing workloads for its own clients. YOu have been tasked to use AWS service such as centralized logging, multi-account strategies, and account vending machine, all powered by AWS managed services for governance and security, like AWS Organizations, IAM Identity Center, AWS Service Catalog, AWS CloudTrail, and more to designed a solution for the client. 


Word of Advice
===============
The Purpose of all the projects are to let you know that AWS has a lot of different services, and figuring out which ones to use when, and assemble them into a solution that meets a set of requirements, is something that you need to be familiar with and practice.

Also, they are all designed to help you understand the differences between the AWS services and which to use for a particular use case.