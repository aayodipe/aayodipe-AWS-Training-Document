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
