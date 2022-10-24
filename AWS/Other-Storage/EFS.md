# EFS


# Elastic File Storage- EFS
- A simple, serverless elastic file system 
- Use with AWS Cloud services and on-premises resources. 
- It is built to scale on demand to petabytes 
- Growing and shrinking automatically as you add and remove files, eliminating the need to provision and manage capacity to accommodate growth
- With Amazon EFS, you pay only for the storage used by your file system and there is no minimum fee or setup cost.
 Amazon EFS offers a range of storage classes designed for different use cases.
    * Standard storage classes = >=3 Availability Zone
    * One Zone Storage classes = 1 Zone only

# EFS Storage Classes
======================
# Standard Storage Classes-
Consist of: 
    - EFS Standard and 
    - EFS Standard–Infrequent Access (Standard–IA), 
    
Both offer to store data in multi-Availability Zone for  resilience and highest levels of durability and availability.

# One Zone storage classes – 
Consist of:
    - EFS One Zone 
    - EFS One Zone–Infrequent Access (EFS One Zone–IA),

Both offer customers the choice of additional savings by choosing to save their data in a single Availability Zone.

Just like S3, Both the standard and the One Zone storage classes have 99.999999999%(11 9s) durability and the standard storage have 99.99% availability because it replicate data in 3 or more Az while the One Zone have 99.90% availability for storing data only in one Az


# Use case
===============
You can use an EFS file system as a common data source for workloads and applications running on multiple instances.

Example - Multiple compute instances, including Amazon EC2, Amazon, AWS Lambda, etc can access an Amazon EFS file system at the same time, providing a common data source for workloads and applications running on more than one compute instance or server.

# Create your Amazon EFS file system
=====================================
1. Create One zone EFS/ Multi-az
2. Select the EFS while launching an instance
3. Edit the security group to allow NFS port 2049
 To Use the EFS with EC2, do the following
4. sudo yum update && sudo yum install -y amazon-efs-utils(install efs client on the machines)
5. Attached the EFS file:
    - Change directory to the user home  "cd ~"
    - Create a file with name of your choice "mkdir shared-efs-folder"
    - Use helper to mount efs "sudo mount -t efs -o tls <efs-id>:/ shared-efs-file"
    - Check to ensure the file is mounted "df -T"
    - Change directory to the user home  "cd shared-efs-folder"
    - Create file with content inside the folder

#    On second Instance 
    - Run sudo yum update && sudo yum install -y amazon-efs-utils
    - Change directory to the user home  "cd ~"
    - Create a file with name of your choice "mkdir shared-efs-folder"
    - Use helper to mount efs "sudo mount -t efs -o tls <efs-id>:/ shared-efs-file"
    - Check to ensure the file is mounted "df -T"
    - Change directory to the user home  "cd shared-efs-folder"