### What is VPC
A virtual private cloud (VPC) is a private cloud computing environment contained within a public cloud. Essentially, a VPC provisions logically isolated sections of a public cloud in order to provide a virtual private environment.


## Features of VPC 
=======================
# Virtual private clouds (VPC)
A VPC is a virtual network that closely resembles a traditional network that you'd operate in your own data center. After you create a VPC, you can add subnets.

# Subnets
A subnet is a range of IP addresses in your VPC. A subnet must reside in a single Availability Zone. After you add subnets, you can deploy AWS resources in your VPC.

# IP addressing
You can assign IPv4 addresses and IPv6 addresses to your VPCs and subnets. You can also bring your public IPv4 and IPv6 GUA addresses to AWS and allocate them to resources in your VPC, such as EC2 instances, NAT gateways, and Network Load Balancers.

# Routing
Use route tables to determine where network traffic from your subnet or gateway is directed.

# Gateways and endpoints
A gateway connects your VPC to another network. For example, use an internet gateway to connect your VPC to the internet. Use a VPC endpoint to connect to AWS services privately, without the use of an internet gateway or NAT device.

# Peering connections
Use a VPC peering connection to route traffic between the resources in two VPCs.

# Transit gateways
Use a transit gateway, which acts as a central hub, to route traffic between your VPCs, VPN connections, and AWS Direct Connect connections.

# VPC Flow Logs
A flow log captures information about the IP traffic going to and from network interfaces in your VPC.

# VPN connections
Connect your VPCs to your on-premises networks using AWS Virtual Private Network (AWS VPN).


# COMPONENT OF VPC
1. VPC CIDR Block (Primary) - 10.0.0.0/16 or 172.16.0.0/16 or 192.168.0.0/16
2. Secondary CIDR Blocks
3. Subnets
4. Availability Zones
5. Elastic Network Interface(Primary and Secondary)
6. En