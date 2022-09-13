Traditional data centers 
a. Large initial up-front investment
b. Take lots of time in planning whether to build data center or to rent
c. Forecasting demand is difficult
d. Slow to deploy new data centers and servers
e. Maintaining data centers is expensive
f. You are responsible for all the security and compliance 


Benefits of Cloud

1. Trade capital expense for variables expense. Instead of you buying a building or lease some, buying servers based on prediction, 
2. Benefit from massive economies of scale. Aws buy things on a very large scale so they're able to make sure that they're getting the best price for those. Also amazon determines how to manage this fleets of servers effectively and those benefits get pass down to the consumer.
3. Stop guessing capacity. You only provision resources base on demand. You can grow you resources when demand grow and shrink then demands drop
4. Increase speed and agility. You reduce the time to make those resources available to your developers from weeks to just minutes
5. Stop spending money maintaining data centers.
6. Go Global in minutes. If you have customers in other regions, to make your services available to then at reasonable speed, you have to build a data center there.With the cloud, you can create infrastructure in any regions.
7. Pay-as-you-go or on-demand



Elasticity ==> is the ability to acquire resources as you need them and release resources when you no longer need them. In the cloud you want to do this automatically. 

Reliability ==> A solutions ability to provide functionality its for its users when it is needed.Amazon's global infrastructure is built to maximize reliability for your cloud or application workloads.

Agility ==> Agility is all about the ability of an organization to rapidly develop, test, and launch software applications that drive business growth. Cloud agility ensures that businesses are empowered to priorities issues and spend less time maintaining infrastructure and more time in activities that add business values. It also provide access to emerging technologies.


Cloud Computing: is the on-demand delivery of compute power, database, storage, application and other IT resources through a cloud services platform via internet with pay-as-you-go pricing

Cloud Computing Models
=====================
1. Infrastructure as a service(IAAS) ==> Running servers in the cloud as you will run it in the data centers. Meaning that you have full access to those servers. You can change the select the servers type(instance type), chose the OS that it will run on, we can configure them to do exactly what we want. However, we have to perform maintenance on those servers. Keep them up and running to do exactly what we want them to do.

2. Platform as a Service(PAAS): Example of this is WordPress. You can easily drop you code and and do the configuration. But the underline server that the code is running on is not yours to worry about. Also AWS has an Elastic Bean Stalk that is a PAAS


3. Software as a service(SAAS). We use multiple software as a Service everyday. Example, gmail, yahoomail,whatsapp etc. We don't have to worry about the underline server that the application is running on, we just need to download or just register an start using it.



Cloud Deployment Model
=====================

1. Public Cloud: Deployment into a public cloud provider like AWS, Azure or GCP.

2. Private Cloud or On-Premise: A cloud-like platform but on a private data center.

3. Hybrid: That is you have an organization that is leveraging both public cloud and on prem.Most large organization use this.


Scenarios 1.
============

TheCornelis Inc runs several production application workloads in its data center.
They are using Virtual Machine(VM such as vagrant) to manage infrastructure in their data center.They want to use AWS and integrate it with their data center for new workloads.

# Which cloud deployment model would you advice TheCornelis inc to use ?


Scenario 2 
===============
TheCornelis Inc is trying to decide whether to fund a new line of business. TheCornelis's team is looking to monetize a new emerging technology. This new line of business will require new infrastructure

# Which benefit of cloud computing would be most relevant to her company?



AWS GLOBAL INFRASTRUCTURE ==> https://aws.amazon.com/about-aws/global-infrastructure/regions_az/
==================================================================================================
1. AWS Regions
2. AWS Availability Zone
3. Edge Location


# AWS Regions
===============
AWS regions are multiple physically separated AZs. When AWS launch new region, they will make sure that they have at least 3 availability zones because there are some services like S3(discuss later) that use 3 availability zones for redundancy of data and read replica. The customer may not be able to interact with the all the three of the AZs during initial roll out and may even be only have access to 2.

* Whenever there is going to be passage of traffic (moving data) between two availability zone, it is guarantee to be encrypted.


# AWS Availability Zone (AZ)
====================
Az represent 2 or more data centers that are co-locating meaning that they are close to each other 

 * AZs consists of one or more data centers that are co-located. The Data center are connected to each other using redundant fiber that is high capacity and low latency.
 * Located within the geographic area of the AWS regions
 * Redundant power, Networking and Connectivity
 * AWS try to ensure that there are no single point of failure in it's global infrastructure
 * Currently there are 84 Azs and 26 Launched Regions
 
#  Data center
=================
* There are thousands of servers in each data center
* No Actual services in AWS that allow you to communicate to AWS Data center of your choice. There are some service that let's you specify a placement, but is not that you are selecting a particular data center.
* Each data center are independent in term of power, A/C and internet. 
* AWS is not particular about the vendor they use to supply the hardware in each of the data center, just that they will surely do their best to get best value for money and pass that down to the end users.


# Local Zone
==================
A Local zone is where AWS has had customer request to build or place an AZ in a particular city, but AWS do not have the rest of the infrastructure to justified creating a region in that city. What they do inside is to associate the remote AZ to another close by region.


# Edge Locations
=====================

These are separate infrastructure separate entirely from AWS regions. They have connectivity to the Region Network so they are still consider as part of global network but not being host inside AWS data center. 
 * There are some services that need global presents such as Route 53(dns) and content Cloudfront(content caching)



Regions and Availability Zone and Data Center Naming
===============================
Regions ==> us-east-1, us-east-2, us-west-1 us-west-2

Data center:  Physical AZ ID ==> Actual use1-az1, use1-az2, use1-az4

Availability Zone: AZ use Logical AZ ID ==> us-east-1a, us-east-1b, us-east-1c, us-east-1d etc
                  ==> us-west-1a, us-west-1b, us-west-1c, us-west-1d 
 
===========================
### DEMO : Let see this on Our AWS Account 
==========================
Availability 


============

Extent to which an application is fulfilling its intended business purpose. Applications that are highly-available are built in a manner where a single failure won't lessen the application's ability to be fully operational.

Different between Low available and highly available application:

If your company has an application that is Mission critical but is down all the time, that mean the application has low availability and if the mission critical application is up all the time that means is a highly available application. 

So the highly available application are built  in a manner where a single failure won't lessen the application's ability  to be fully operational


We we have a Mission Critical application and we deploy the application in multiple AZs within a regions, that means that we minimize amy single point of failure in taking our application down.

#### Service and Resource Scope
==================================
Let's look at services and resources that could be deploy using those scope that we covered.

# Data Center Scope
==============
Resources that were Data center scoped: Though you can not specifically state the data center that you want to use for your resources but you can use state the placement group to move them close to each other. Example of such resources are:
* Dedicated Host
* Dedicated Instances
* Cluster Placement Group


# Availability Zone Scope
===========================

EC2 Instance
EBS Volume
RDS Instance
FSx File System
Redshift Node 
VPC Subnet



# Multi- AZs
===============
These resources have the ability to be deployed in multiple AZs but they are actually present in one 

* RDS Multi-AZ
* Auto Scaling on EC2
* Elastic Load Balancer
* Elastic Beanstalk


# Region
===============
This is where majority of AWS service are set
* All Service API Endpoints
* S3 Bucket
* DynamoDb Table
* Lambda Functions
* WAS Web ACL
* VPC Network

# Edge Location
===================
* Route 53 Zone
* CloudFront Distribution
* WAF Web ACL
* Lambda@Edge Function

# On Premise
=============
* AWS Outpost
* AWS Snowcone
* AWS Snowball 
* AWS Snowball@Edge
* AWS IOT Greengrass
* AWS Storage Gateway



### AWS IDENTITY MANAGEMENT
======================================

* Root Users
* IAM User 
* IAM Group
* Identity Provider
* Federation Options


### ROOT USERS
===================

* The AWS Account is going to associate with only one root users and associate credentials.The root user will have an email address as username. This is the email address associate with Account during creation.
* To login into the AWS Account as a root user, you will have to user the generic login url
* Access to all the entire AWS ecosystem. There are number of unique task that can only be perform by root users.
* Root Account can only be close by the root user

# ==> Tasks that can only be perform by the Root user
* Change account settings
* Change AWS Support Plan
* Activate access to Billing and Cost
* View Billing Tax invoices
* Restore IAM User permissions for only IAM administrator
* Configure S3 bucket for MFA Delete
* Sing up for GovCloud
* Close the account

# Root Access Credentials
=======================
a. Username and Password - Required
b. API Keys- Not Recommended
c. MFA recommended



# IAM USERs



































Sources for funding
approve fund
order servers
set up servers and networkins

Data center take minimum of 5 months to build. 
 1. In data center- To server content through website
 2. File Server - To Store user uploads like profile pictures
 3. Database server - To store users information like Name, address and credit card

Data center growth and expansion takes up to 7 - 8 months

With VMware server virtualization, a hypervisor is installed on the physical server to allow for multiple virtual machines (VMs) to run on the same physical server. Each VM can run its own operating system (OS), which means multiple OSes can run on one physical server.