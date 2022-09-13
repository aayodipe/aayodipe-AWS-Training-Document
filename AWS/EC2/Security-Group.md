### Security Group/Firewall
    - A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. 
    - When you launch an instance in a VPC, you can assign up to five security groups to the instance. 
    - Security groups act at the instance level, not the subnet level. 
    - Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups.

    - If you launch an instance using the Amazon EC2 API or a command line tool and you don’t specify a security group, the instance is automatically assigned to the default security group for the VPC. 
    - If you launch an instance using the Amazon EC2 console, you have an option to create a new security group for the instance.

    - For each security group, you add rules that control the inbound traffic to instances, and a separate set of rules that control the outbound traffic. 
 

 #### Basic Character of Security groups for your VPC:

    - You can specify allow rules, but not deny rules.
    - All Inbound traffic is blocked by default.
    - All Outbound traffic is allowed.
    - Changes to Security Groups take effect immediately.
    - You can have any number of EC2 instances within a security group.
    - You can have multiple security groups attached to EC2 Instances.
    - Security Groups are stateful.
    - If you create an inbound rule allowing traffic in, that traffic is automatically allowed back out again.
    - You cannot block specific IP addresses using Security Groups, instead use Network Access Control Lists.
    