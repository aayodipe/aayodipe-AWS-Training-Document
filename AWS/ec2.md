AWS EC2
=======
Amazon Elastic Compute Cloud(EC2) - Elastic Cloud Computing 
    - Is a virtual computer in Amazon Web Service Cloud.
    - Unlike physical computer, with Amazon EC2, you don't invest in hardware up front.
    - You can lunch as many server as you want whenever you want it.
    - You can scale up or down to handle changes in requirement or spike
    - reduce need to forecast traffic

Feature of EC2
==============
    - EC2 is a virtual Machine known as Instance
    - has a pre-configured template  known as Amazon Machine Image - AMI( Operating Systems and addition Software)
    - has various configuration of CPU, Memory, Storage and Networking Capacity for your instance - known as Instance Type
    - Use Key pair for secure login instead of username and password(Private and public key)
    - Storage volume that delete when you off your system known as Instance Store Volumes
    - Storage volume that persist even when your power off or terminate your instance
    - Multiple location to create your instance in form of regions and availability zone
    - A firewall that enable you to prevent unwanted access or restrict protocols, Port and IP known as Security Group
    - Static IP address - known as Elastic IP  Address
    - Metadata known as Tags
    - Virtual networks you can create that are logically isolated from the rest of AWS Cloud.


EC2 Pricing
==============
1. On-demand Instances - 
    - Pay by seconds for the instance you use up to a minute. 
    - No commitments or upfront payment
    - Minimum of 1 minute

2. Savings Plans( compute, Ec2 Instance or SageMaker)
    - Type Compute Savings up to 
    - COMPUTE Discounted amount up to 66% for compute( EC2 or Lambda or Fargate usage regardless of Region or Instance family)
    - Discounted amount up to 72% for EC2 saving(For a specific family of EC2 Instance in any AZ in a particular region only. )
    - Discounted amount up to 64% apply to sageMaker only regardless of region or 
    - Committed to a consistent amount of Usage in USD per hours (Notice the usage)
    - 1 or 3 Years . No 2 Years


3. Reserved Instances
    - Discounted amount
    - Commitment to a specific configuration, including instance type and Regions
    - 1 or 3 years
    - types of Reserved Instance 
        - Standard Reserved instances - These offer up to 75% off on demand instances. The more you pay up front and the longer the contract, the greater the discount.
        - Convertible Reserved Instances - These offer up to 54% off on demand capability to change the         attributes of the RI as long as the exchange results in the creation of -Reserved Instances of equal or greater value.
        -  Scheduled Reserved Instances - These are available to launch within the time windows you reserve. This option allows you to match your capacity reservation to a predictable recurring schedule that only requires a fraction of a day, a week, or a month.

4. Spot Instances
    - Request Unused EC2 Instances, which can reduce your Amazon Cost significantly
    - discount up to 66%
    - use for application that have flexible start and end times
    - Use by application that a feasible at very low computer price
    - 
5. Dedicate Hosts Pricing
    - Do not permit shared tenancy
    - Useful fpr regulatory requirements that may not support multi-tenant virtualization
    - Can be purchased On-Demand (hourly)
    - Can be Purchased as a Reserved for up to 70% discount Price.

    The total cost of provisioned environment include 
        - Cost of Instances
        - Cost of Storage(EBS and/or Instance Store)
        - Snapshot for storage


    Components of EC2 Instance
    ==========================
     Basic Requirement
     ==================
    Region and Availability Zones
    AMI
    Instance Type
    Tags

    Security 
    =========
    Keys   
        -- ED25519 or RSA
        -- Private or Public
        -- Pem(Linux-Based)
        -- ppk for window
        -- only owner can read(chmod 400 key.pem)

    Security Group
        - Type (https,http, ssh etc)
        - Source (anywhere, my ip or cidr block)
        - description
    Elastic IP addresses

    Networking 
    ==========
    Virtual Cloud

    Storage
    ======
    Amazon EBS
    Instance Store

    Hand On
    ======== 

    Launch our First Instance
        - Launch an Instance
        - Content to the Instance
        - Clean up



EC2 Console Explain
===================
# EC2 Dashboard
# EC2 Global View - 
    Summary of all EC2 across all region enabled
# Events - 
    AWS Events schedule of your instance. Volume Events which disable I/O operation when the volume status check failed.
# Limits 
    Limit of EC2 Resources

# Instances
    List of all instance 
# Instance Types
    - Instance type is determine by:
        - vCPUs, 1, 2, 3,4 etc
        - Architecture, 
        - Memory(GiB), 
        - Storage Size, 
        - Storage Type, 
        - Network Performance
# Launch Template
    - Pre-configure template to launch instance. Use launch template to automate instance launches, simplify permission policies and enforce best practices across your organization.

# Spot Request - Hand on
# Savings - Hand on


Install a web server on EC2
==========================
Steps:
1. Launch EC2 Instance
2. update the instance : sudo yum update -y
3. Install php packages: sudo amazon-linux-extras install php8.0 mariadb10.5 . This command installs multiple software packages and related dependencies at the same time.
4. Install apache web server: sudo yum install -y httpd
5. Start the httpd daemon: sudo systemctl start httpd && sudo systemctl enable httpd
6. Open the security Group to allow http and https port
7. Visit to domain to ensure that apache was installed successfully
8. 




os 
instance-type
storage
security group
key pair
Tag


Standard Monitoring and Detailed Monitoring


