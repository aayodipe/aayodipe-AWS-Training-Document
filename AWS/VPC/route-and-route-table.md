# Route table
==============



## Routing to an internet gateway
=================================
You can make a subnet a public subnet by adding a route in your subnet route table to an internet gateway. To do this, create and attach an internet gateway to your VPC, and then add a route with a destination of 0.0.0.0/0 for IPv4 traffic or ::/0 for IPv6 traffic, and a target of the internet gateway ID (igw-xxxxxxxxxxxxxxxxx). 

The table below show how the Public Subnet route table looks like

Destination     |    Target
----------------------------
0.0.0.0/0       | igw-id


### Routing to a NAT device

To enable instances in a private subnet to connect to the internet, you can create a NAT gateway or launch a NAT instance in a public subnet. Then add a route for the private subnet's route table that routes IPv4 internet traffic (0.0.0.0/0) to the NAT device. 

The table below show how the private Subnet route table looks like

Destination     |    Target
----------------------------
0.0.0.0/0       | nat-gateway-id
