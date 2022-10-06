### VPC 
A virtual private cloud (VPC) is a virtual network dedicated to your AWS account. It is logically isolated from other virtual networks in the AWS Cloud

A VPC contains a range of IP address. Dividing this IP address into smaller range is called Subnet.

## A Subnet
    A Subnet can either be a private or a public.  Every Subnet, have a route-table that enables resources in that subnet to interact with resources outside that subnet. The best practice is to have a single route table for all public subnet and a route table for each private subnet. However, all subnet in a VPC can use one single subnet or all private subnet can use one single subnet.

## Services use to connect resources in your AWS VPC with Resources Outside your VPC:

1. AWS Resources or Services  such as S3 and DynamoDB use VPC Gateway Endpoint
2. Other AWS Services or Resources such as EC2 or Kinesis use VPC Interface Endpoint
3. Connect VPC to Other Single VPC use VPC Peering
4. To connect to VPC with on-prem only use VPN or Direct connect
5. Connect Single VPC to two or More VPC or on-prem Data center use Target Gateway
6. Connect Resources in your VPC( Client VPC) to Third Party (Service Provider) VPC's use Private Link


How to create a VPC Peering

1. Create a VPC Peering
2. Accept the Request
3. Configure the Route table for the VPC peering
    a. Add the CIDR of Requester to the Route-table of accepter with a link to the vpc peering

    b  a. Add the CIDR of Accepter to the Route-table of requester with a link to the vpc peering