### Security Logging and Monitoring

1. Design and Implement security Monitoring and alerting
2. Troubleshoot security monitoring and alerting
3. Design and implement a logging solution
4. Troubleshoot logging solutions.


#### Design and Implement security Monitoring and alerting

Monitoring an Infrastructure  using VPC Flow Log


VPC Flow Logs 
    - A feature that enables you to capture information about the IP traffic going to and out of your network interfaces in your VPC. 
    - Flow logs data can be published to CloudWatch Logs or S3
    - 
1. VPC Flow Logs
    - Capture information about IP traffic going to and front network interfaces in your VPC
    - published logs into cloudfront or S3 bucket
    - logs can be deleted without network performance impact
    - Flow logs can be create at VPC level, Subnet Level or Network Interface.
    - Type of data that can be capture Accept, Reject or All
    - Flow logs monitor at VPC level or Subnet Level monitor all the network interface in the VPC or Subnet
    - Flow Log Data are store in Flow log records