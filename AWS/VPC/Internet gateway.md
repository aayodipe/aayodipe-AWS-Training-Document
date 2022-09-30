## INTERNET GATEWAY
====================

An internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between your VPC and the internet. It supports IPv4 and IPv6 traffic. It does not cause availability risks or bandwidth constraints on your network traffic.

internet if the resource has a public IPv4 address or an IPv6 address. Similarly, resources on the internet can initiate a connection to resources in your subnet using the public IPv4 address or IPv6 address. For example, an internet gateway enables you to connect to an EC2 instance in AWS using your local computer.

# Internet access for default and nondefault VPCs
==================================================
-----------------------------------------------------------
# Component                 |	Default VPC  |	Nondefault VPC
----------------------------------------------------------
# Internet gateway          | 	Yes          | No
-----------------------------------------------------------
# Route table with route to |                |
# internet gateway for      |   Yes          | No
# IPv4 traffic (0.0.0.0/0)  |	     	     |
-------------------------------------------------------------
# Route table with route to |                |
# internet gateway for      |   No           | No
# IPv6 traffic (::/0)       |	     	     |
-------------------------------------------------------------
# Public IPv4 address       |                      |
# automatically assigned    | Yes (default subnet) |  No (nondefault subnet)
# to instance launched into |                      |
# subnet                    |		               |
# IPv6 address automatically|                      |
# assigned to instance      |  No (default subnet) |	No (nondefault subnet)
#  launched into subnet 	|                      |
-----------------------------------------------------------------------------
 