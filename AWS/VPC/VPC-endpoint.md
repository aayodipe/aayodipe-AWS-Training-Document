### VPC Endpoint
A VPC endpoint 
-   powered by PrivateLink, 
-   enables you to privately connect your VPC to supported AWS services 
-   Do not requiring an internet gateway, NAT device, VPN connection, or AWS Direct Connect connection. 

-   Instances in your VPC do not require public IP addresses to communicate with resources in the service. 
-   Traffic between your VPC and the other service does not leave the Amazon network.

# Interface endpoint 
    is an elastic network interface (ENI) with a private IP address from the IP address range of user’s subnet that serves as an entry point for traffic destined to a supported service. It enables you to privately access services by using private IP addresses.

# Gateway endpoint
     is a gateway that you specify as a target for a route in your route table for traffic destined to a supported AWS service. Currently supports S3 and DynamoDB services.