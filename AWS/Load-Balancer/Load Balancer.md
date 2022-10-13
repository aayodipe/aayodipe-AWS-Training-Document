### AWS Elastic LOAD BALANCER
===========================
Elastic Load Balancing automatically distributes your incoming traffic across multiple targets, such as EC2 instances, containers, and IP addresses, in one or more Availability Zones. It monitors the health of its registered targets, and routes traffic only to the healthy targets. Elastic Load Balancing scales your load balancer capacity automatically in response to changes in incoming traffic.

## Benefit of Load Balancer
1. Distribute Workloads across multiple computer resources
2. Increase the availability and fault tolerance of your applications.
3. You can add or remove instance from the target group without disturbing the overall flow of request to your application
4. Load Balancer can help to monitor the health of the instance in the target group.

### Feature of Application Load Balancer
- Distribute incoming traffic across registered Target such as EC2 instances across Availability Zones
- Support protocols like http, https and TCP
- Terminates the client connection. It does not only pass the traffic that comes from client to target instances, it also terminate the client connection.
- Receives Public DNS Canonical Name (CNAME) for endpoint
- Perform instance health checks
- Support various routing techniques such as Round Robin, Path based and host based.
- Is Highly available and scalable
- Support Path and host-based routing

### How Application Load Balancers work
========================================
1. Your client makes a request to your application.
2. The listeners in your load balancer receive requests matching the protocol and port that you configure.
3. The receiving listener evaluates the incoming request against the rules you specify, and if applicable, routes the request to the appropriate target group. You can use an HTTPS listener to offload the work of TLS encryption and decryption to your load balancer.
4. Healthy targets in one or more target groups receive traffic based on the load balancing algorithm, and the routing rules you specify in the listener.

## Load Balancer Node and Cross Zone Load Balancing
===================================================

When you enable an availability Zone, Elastic Load Balancer creates a load Balancer Node in each of the availability Zone. The Load Balancer node is responsible for distributing traffics among the Register targets in the target group. 

When a cross-zone load balancing is enable, each Load Balancer node distributes traffics across the registered target in all enabled availability zone. When cross-zone load balancing is disabled, each load balancer node distributes traffic only across the registered targets in its Availability Zone.

# Health Checking Settings

Your Application Load Balancer periodically sends requests to its registered targets to test their status. These tests are called health checks. The ELB Nodes only route traffic to healthy targets in the target group.

## Routing Algorithm
=====================




### Application Load Balancer Demo
==============================
1. Load Balancing internet-facing Web Application
2. Load Balancing Internal Web Services
3. Sticky Sessions and Idle timeouts
4. Securing Web Applications with HTTPS
5. Configure Path Based routing

Step 1: Set up VPC - Walmart VPC
    - CIDR 192.168.0.0/16
    - Enable DNS Hostname
    - Internet Gateway: Walmart-IGW

Step 2: Set up your subnet
    - Walmart-Web-SB-1 - 192.168.128.0/20
    - Walmart-Web-SB-2 - 192.168.144.0/20
    - Walmart-Application-SB-1 - 192.168.160.0/20
    - Walmart-Application-SB-2 - 192.168.176.0/20
   # - Walmart-Database-SB-1- 192.168.20.0/24*
   # - Walmart-Database-SB-2- 192.168.22.0/24
Step 3: Set up Route-Table 
    - 1 Public Route Table with a route to the Internet ( Use the Main Route Table)
    - 2 Route Table for Application Subnets
    - 2 Route Table to Web Subnets
Step 4: Set up Security Group
    - Walmart-ALP-SG
        * Inbound port 80 0.0.0.0/0
        * Inbound port 403 0.0.0.0/0
        * Inbound port 22 Your IP
    - Walmart-Web-SG 
        * Inbound port 80 Walmart-ALP-SG
        * Inbound port 443 Walmart-ALP-SG
        * Inbound port 22 Your IP
    - Walmart-Application-SG
        * Inbound port 8080,9090  - Walmart-Web-SG 
        * Inbound port 8080,9090  - Walmart-Web-SG 
        * Inbound port 22 Your IP
    - Walmart-Database-SG 
        * Inbound port 3306 - Walmart-Application-SG
        * Inbound port 3306 - Walmart-Application-SG
        * Inbound port 22 Your IP
Step 5: Set up the Network Interface
        - Walmart-Web-SB-1 - 192.168.128.0/20
            - MWeb1- 192.168.128.4
            - MWeb2- 192.168.128.5       
        - Walmart-Web-SB-2 - 192.168.144.0/20
            - MWeb3- 192.168.144.4
            - MWeb4- 192.168.144.5
        - Walmart-Application-SB-1 - 192.168.160.0/20
            - MApp1- 192.168.160.4
            - MApp2- 192.168.160.5   
        - Walmart-Application-SB-2 - 192.168.176.0/20
            - MApp3- 192.168.176.1
            - MApp4- 192.168.176.2  
   
           
Step 5: Launch the Instance
Step 6. Setup Target Groups
Step up the load balancer


## Difference between NLB and ALB

- NLB Operate at layer 4 i.e use TCP and UDP and TLC, ALB Operate at Layer 7 use http and https
- NLB handle millions of requests per second
- NLB is designed to handle traffic inbound to be deliver to application, ALB design for inbound traffic to be deliver to web server
- Both could be internet-facing or Internal Only
- With NLB you can only create TCP and UDP or Both 
- NLB do not support Security Group but ALB does
- NLB Support Cross-Zone Load Balancing, ALB does not


## USE CASE OF NLB
===============
1. 