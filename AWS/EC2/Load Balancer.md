### LOAD BALANCERS
===========================

Load Balancers are servers that forward internet or network traffic to multiple servers such as computer or servers or EC2 Instances


## Why do we use a Load Balancer?
=============================
1. Spread load across multiple servers or ec2 instances
2. Expose a single point of access(DNS) to your application
3. Seamlessly or smoothly (without cursing attention) handle failure of one or more servers or ec2 instances
4. Do regular health checks to your instances
5. Provide SSL termination (HTTPS) at your website 
6. Enforce stickiness with cookies i.e ensuring that a user is constituently accessing same server or ec2 instance
7. High availability across zones


## What is AWS Elastic Load Balancing?

An AWS Elastic Load Balancer is a managed load balancer that automatically distributes your incoming traffic across multiple targets, such as EC2 instances in one or more Availability Zones. 

* AWS guarantee that it will be working(highly available)
* AWS Take care of the upgrade and maintenance
* Easily to configure
* Can be integrated with Many AWS services

## Type of Elastic Load Balancers

1. Application Load Balancers

2. Network Load Balancers

3. Gateway Load Balancers

4. Classic Load Balancers

With Application Load Balancers, Network Load Balancers, and Gateway Load Balancers, you register targets in target groups, and route traffic to the target groups. 

With Classic Load Balancers, you register instances with the load balancer.

# A Load Balancer can be an Internal(Private) Load Balancer or a Public(External) Load Balancer

### STEPS INVOLVED IN CREATING A LOAD BALANCER
==============================================

Step 1: Configure a target group
Step 2: Register targets
Step 3: Configure a load balancer and a listener
Step 4: Test the load balancer


### Feature of Application Load Balancer
- Distribute incoming traffic across attached EC2 instances across Availability Zones
- Support protocols like http, https and TCP
- Could terminate SSL encryption from the client at the listener level
- Receives Public DNS Canonical Name (CNAME) for endpoint
- Perform instance health checks
- Support various routing techniques such as Round Robin, Path based and host based.
- Is Highly available and scalable

### How Application Load Balancers work
========================================
1. Your client makes a request to your application.
2. The listeners in your load balancer receive requests matching the protocol and port that you configure.
3. The receiving listener evaluates the incoming request against the rules you specify, and if applicable, routes the request to the appropriate target group. You can use an HTTPS listener to offload the work of TLS encryption and decryption to your load balancer.
4. Healthy targets in one or more target groups receive traffic based on the load balancing algorithm, and the routing rules you specify in the listener.

