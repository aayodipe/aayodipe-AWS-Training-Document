#### Amazon Machine Image - AMI
 - Provides the information such as Operating System and Other applications required to launch an instance
 It's required to launch an Instance
 Region Specific - It can only be used in the region it was created.
 Includes One or more Amazon Elastic Block Store (Amazon EBS) snapshots
 Launch permissions that control which AWS accounts can use the AMI to launch instances.
 A block device mapping that specifies the volumes to attach to the instance when it's launched.

 ### Source of AMI

 Community ( from vendors such as Microsoft(windows), RedHat, Ubuntu, Fedora etc). You must trust the provider for security purpose
 Marketplace (vendor already install some software on this)
 My AMIs ( From a running EC2 instance)
 Shared AMIs ( from within a company in other to centralized configuration)

# Creating a AMI
Console
CLI
SDK - Boto3
AWS Backup
AWS EC2 Image Builder
Packer - Third Party Tools


# 