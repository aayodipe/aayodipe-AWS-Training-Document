# Introduction to Terraform
===========================
1. Install Terraform
    https://developer.hashicorp.com/terraform/downloads

2. Configure Terraform 
        Environment Variable
        Provider
        aws/Configuration File

3. File Extension
    Code in the Terraform language is stored in plain text files with the .tf file extension or .tf.json file extension

4. Directories and Modules
    A module is a collection of .tf and/or .tf.json files kept together in a directory. Terraform evaluates all of the configuration files in a module, effectively treating the entire module as a single document. Separating various blocks into different files is purely for the convenience of readers and maintainers, and has no effect on the module's behavior.

5. Lock File Location
    .terraform.lock.hcl - A terraform lock file generated at the time of terraform initialization. TThis file should be save in your version control system

6. Style Conventions
    Run Terraform fmt to format your terraform file to use the style conversion format.

7. Resource Blocks
    - Is use to describes one or more infrastructure/resource such as VPC, EC2, S3 etc. 
    
    - A resource block declares a resource of a given type ("aws_instance") with a given local name ("web"). 
    
    - The name is used to refer to this resource from else where in the same Terraform module, but has no significance outside that module's scope.

8.  Hashicorp Configuration Language(HCL)
        This is the official language for Terraform IAC

# How Terraform Configuration Work
===================================

In summary, applying a Terraform configuration will:

- Create resources that exist in the configuration but are not associated with a real infrastructure object in the state.

- Destroy resources that exist in the state but no longer exist in the configuration.
- Update in-place resources whose arguments have changed.
- Destroy and re-create resources whose arguments have changed but which cannot be updated in-place due to remote API limitations.



TERRAFORM OBJECT TYPES 
=====================
# 1. Provider
    Defined information about the provider that you want to use such as credentials, region, profile etc. Example of A provider is AWS, GCP or Azure
# 2. Resources
     Resources are the things that you want to create in the target environment. Resources is the bulk of what you will be writing. Example of a resources is EC2 Instance, S3, VPC etc
# 3. Data Source
    These are ways to query information from a provider. Data source do not create any new thing, rather is use to ask/query for the information you will need in your terraform configuration. Examples of a data sources are an AMI to use for EC2, an availability zone for Subnet etc.

# Block Syntax
=============
    HCL uses block syntax for everything in the file. Each Block start 
        block_type "label" "name_label"{
            key = "value"
            key = "value"
            nested_block= {
                key="value"
            }
        }
    Note: arguments to the block. And you can fine the Attribute of the block from the output after you run terraform apply.

    For example

        resource "aws_instance" "web-server"{
            instance_type = "t2.micro"
            ami= "ami-08c40ec9ead489470"
            ebs_volume {
                size = 40
            }
        }

# How to reference an attribute in a Terraform Block Type
    Use the block type, label, name_label and the attribute all separated by periods/dot to reference an attribute in a block. For resource block, the block type is optional 
<!-- Example 
    resource.aws_instance.webserver.id  
  aws_instance.webserver.id. -->


<!-- Sample demo -->
VPC
IGW
Subnet
Routing
Route Table Association

## Understand Resource Behavior
    You can use Resource to perform the below actions:
    - Create Resource
    - Update in-place Resources
    - Destroy and Re-create Resources
    - Destroy Resource  

## Demo
# VPC Provision with Terraform
===============================

1. Create VPC
2. Create Subnet
3. Create Internet Gateway and attached to VPC
4. Create a Route Table
5. Create Route to the internet using the internet gateway
6. Associate the route-table with the subnet
7. Create Security Group with port 22,80 and 443

# Working with Meta-Argument
    - Depend_on
    - Count and count Index
    - For_each
        with Map
#       with toset:
            resource "aws_iam_user" "the-accounts" {
            for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
            name     = each.key
            }   
Demo 2.

8. Create  an Elastic IP  Address (This depend on IGW so depend_on is required)
9. Create an EC2 Instance with EIP Attached

# Terraform Command
 - fmt
 - validate
 - init
 - plan
 - apply
 - destroy
 - state list - show all the resources that have been created with tf.state
 - refresh - update the tf.state with the changes made outside of the terraform file such as changes done manually from console
        - Terraform plan ==> terraform refresh ==> terraform show
  - force-unlock
     <!-- terraform force-unlock LockID -->
 - show - show all the tfstate. Use this to get the name of a resources if you want to taint a resource
 - taint - To mark a replace marker to a resources
 - untaint - remove tainted object
 - -target=resourceName

 # Workspace - Use to create multiple working directories to maintain multiple instances of a configuration with completely separate state data

 A common use for multiple workspaces is to create a parallel, distinct copy of a set of infrastructure to test a set of changes before modifying production infrastructure.

 Every initialized working directory starts with one workspace named default.

Use the terraform workspace list, terraform workspace new, and terraform workspace delete commands to manage the available workspaces in the current working directory.

Use the terraform workspace select command to change the currently selected workspace. For a given working directory, you can only select one workspace can be at a time. Most Terraform commands only interact with the currently selected workspace. This includes provisioning and state manipulation.
 =============
 Workspace commands
    - Terraform workspace
        * show - show current workspace
        <!-- terraform workspace show -->
        * list - The terraform workspace list command is used to list all existing workspaces.
        <!-- terraform workspace list -->
        * new  <workspaceName>- create a new workspace
        <!-- terraform workspace new dev -->
        * select - terraform select [dir] The terraform workspace select command is used to choose a different workspace to use for further operations. 
         <!-- terraform workspace select dev -->
        * delete - delete a workspace
        <!-- terraform workspace delete dev -->


Terraform Ignore  


# State Management
====================


Desire State - Where you want to be
Current State - Where you are currently