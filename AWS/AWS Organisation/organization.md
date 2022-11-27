
# AWS Organizations 
    Is an account management service that enables you to consolidate multiple AWS accounts into an organization that you create and centrally manage. AWS Organizations includes account management and consolidated billing capabilities that enable you to better meet the budgetary, security, and compliance needs of your business. As an administrator of an organization, you can create accounts in your organization and invite existing accounts to join the organization.

# Features of AWS Organization
- Centralized management of all of your AWS accounts
- Consolidated billing for all member accounts
- Group your account into an organizational unit to meet your budgetary, security, or compliance needs
- Set Service Control Policies to centralize control over the AWS services and API actions that each account can access
- Policies to standardize tags across the resources in your organization's accounts
- AWS Organization is free to use. You only pay for service that the member account used.

# Terminologies in Organizations
================================
#### Organization
An entity that you create to consolidate your AWS accounts so that you can administer them as a single unit.
#### Root
The parent container for all the accounts for your organization. If you apply a policy to the root, it applies to all organizational units (OUs) and accounts in the organization.
#### Organizational unit (OU)
A container for accounts within a root. An OU also can contain other OUs. When you attach a policy to one of the nodes in the hierarchy, it flows down and affects all the OUs and leaves accounts beneath it. An OU can have exactly one parent, and currently each account can be a member of exactly one OU.
#### Account
An account in Organizations is a standard AWS account that contains your AWS resources and the identities that can access those resources.

#### The management account
Is the account that you use to create the organization. From the organization's management account, you can do the following:

- Create accounts in the organization
- Invite other existing accounts to the organization
- Remove accounts from the organization
- Manage invitations
- Apply policies to entities (roots, OUs, or accounts) within the organization
- Enable integration with supported AWS services to provide service functionality across all of the accounts in the organization.
#### Member accounts 
Make up all of the rest of the accounts in an organization. An account can be a member of only one organization at a time. You can attach a policy to an account to apply controls to only that one account.

#### Invitation
The process of asking another account to join your organization. An invitation can be issued only by the organization's management account.  The invitation is extended to either the account ID or the email address that is associated with the invited account

# Available feature sets. 
There are two type of feature set in AWS Organization:
1. All Features
    The default feature set that is available to AWS Organizations. It includes all the functionality of consolidated billing, plus advanced features that give you more control over accounts in your organization.
2. Consolidated Billing
This feature set provides shared billing functionality, but doesn't include the more advanced features of AWS Organizations. For example, you can't enable other AWS services to integrate with your organization to work across all of its accounts, or use policies to restrict what users and roles in different accounts can do. To use the advanced AWS Organizations features, you must enable all features in your organization.

####  Service control policy (SCP)
A policy that specifies the services and actions that users and roles can use in the accounts that the SCP affects. SCPs are similar to IAM permissions policies except that they don't grant any permissions.  Instead, SCPs specify the maximum permissions for an organization, organizational unit (OU), or account. When you attach an SCP to your organization root or an OU, the SCP limits permissions for entities in member accounts.


# AWS Organization
====================
By the end of this project, you will get a real-world experience of building a Business architecture using ‘AWS Organization’ and to enable ‘Organization Cloud Trail’ to continuously monitor and retain account activities related to actions across your AWS Infrastructure.

# In this course, we are going to focus on four learning objectives:
1. Create 'AWS Organization'
2. Add members to 'Organization'
3. Attach 'Service Control Policy'  to member accounts
4. Enable 'Cloud Trail' for your Organization.

# Project Tasks
==================
Task 1: Create an Organization using AWS account.
Task 2: Invite an existing AWS account as member account to the AWS Organization and create a new aws account with organization.
Task 3: Create a member account within an Organization.
Task 4: Create Organizational Unit inside AWS Organization
Task 5: Architect Custom Service Control Policy for member accounts inside an Organization
Task 6: Attach Service Control Policy to member accounts
Task 7: Create Cloud Trail and configure it to log data for all accounts in an Organization to S3/CloudWatch 
Task 8: Switch Roles between Member account and Management account.

# Solutions
==============
Step 1: Create your organization
In this step, you create an organization with your current AWS account as the management account. You also invite one AWS account to join your organization, and you create a second account as a member account.

Step 2: Create the organizational units
Next, you create two organizational units (OUs) in your new organization and place the member accounts in those OUs.

Step 3: Create the service control policies
You can apply restrictions to what actions can be delegated to users and roles in the member accounts by using service control policies (SCPs). In this step, you create two SCPs and attach them to the OUs in your organization.

Step 4: Testing your organization's policies
You can sign in as users from each of the test accounts and see the effects that the SCPs have on the accounts.


# Sample SCP Policy to deny cloudtrail actions attached to root
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Stmt1234567890123",
            "Effect": "Deny",
            "Action": [
                "cloudtrail:AddTags",
                "cloudtrail:CreateTrail",
                "cloudtrail:DeleteTrail",
                "cloudtrail:RemoveTags",
                "cloudtrail:StartLogging",
                "cloudtrail:StopLogging",
                "cloudtrail:UpdateTrail"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}

# Allows approved services for the OU
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Stmt1111111111111",
            "Effect": "Allow",
            "Action": [ 
                "ec2:*",
                "s3:*"
                    ],
            "Resource": [ "*" ]
        }
    ]
}

# SCP for an Individual Account
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": [ "dynamodb:*" ],
      "Resource": [ "*" ]
    }
  ]
}