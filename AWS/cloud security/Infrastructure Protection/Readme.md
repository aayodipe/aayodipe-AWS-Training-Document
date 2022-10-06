### Infrastructure Protection
=============================

To achieved the security objective of AWS Architected Framework, Infrastructure protection is one of the areas of concern. In this module, we would cover:

1. Design edge of security on AWS
2. Design and Implement a secure network infrastructure
3. Troubleshoot a secure network infrastructure


The Topic to consider include:
* Virtual Private Cloud
    - Definition
    - Special Type of IP address
    - Reserved IPS 
        * 2nd address- Reserved for VPC Router( 10.0.0.1)
        * 3rd address- Reserved for DNS server( 10.0.0.2)
        * 4th Address- Reserved for Future use( 10.0.0.3)
    - Concept of Tenancy- This defines how EC2 launched in the VPC will share hardware with other account within AWS Cloud.
* Subnet Creation
    - Subnet ID- which uniquely identify a subnet from other subnet
    - Private Subnet
    - Public Subnet
    - Subnet CIDR - a section of VPC which determine the numbers of IP address available in each subnet
    - Subnet Quote = 200 per VPC
* Route Table
    - Destination 
    - Target
* Internet Gateways - A Scalable, redundant and highly available
    - Internet gateway or Default Internet gateway
    - Egress only Internet Gateway: Only use to enable outbound IPV6
* Network Address Translation(NAT) Gateway
* Network Access Control List - NACL
* Security Group
* VPC Endpoint
    - Gateway Endpoint
    - Interface Endpoints
* VPC Flowlog

* Load Balancing
* AWS Web Application
* AWS Shield