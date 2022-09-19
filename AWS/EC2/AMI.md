#### Amazon Machine Image - AMI
 - Provides the information such as Operating System and Other applications required to launch an instance
 It's required to launch an Instance
 Region Specific - It can only be used in the region it was created.
 Includes One or more Amazon Elastic Block Store (Amazon EBS) snapshots
 Launch permissions that control which AWS accounts can use the AMI to launch instances.
 A block device mapping that specifies the volumes to attach to the instance when it's launched.

 ### Source of AMI

- Community ( from vendors such as Microsoft(windows), RedHat, Ubuntu, Fedora etc). You must trust the provider for security purpose
- Marketplace (vendor already install some software on this)- Trusted Vendors
- My AMIs ( From a running EC2 instance)
 Shared AMIs ( from within a company in other to centralized configuration)
 - Quick Pick

# Creating a AMI
Console
CLI
SDK - Boto3
AWS Backup
AWS EC2 Image Builder
Packer - Third Party Tools

## Use case of an AMI 
===================
 
 1. You can create your own AMIs to use in Auto Scaling groups or to speed up the launch of complex instances that require multiple steps to download, install, and configure the software.
 
 2. There is also a case for a base image in an organization that has a pre-approved operating system, as well as security settings pre-installed for all users to conform to.

There are community AMIs available; however, you run these at your own risk since there may be unknown packages installed on them.

Another option is to use marketplace AMIs provided by vendors and partners that have vetted and known software already preconfigured. These AMIs often have an extra price per hour when running the instance. 