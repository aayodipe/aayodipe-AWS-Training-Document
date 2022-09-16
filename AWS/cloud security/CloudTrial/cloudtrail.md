#### CloudTrail
================

CloudTrail enables governance(means by which you control and direct your organization's approach to security), compliance, risk auditing and operational auditing with either your AWS account or multiple accounts using AWS organizations.

In AWS every actions is performed by an API call. This is true for Console Management, CLI, or SDK actions.

All of these use API calls to perform the necessary actions, then those API actions are recorded by the cloud trails service if it has been turned on.

#### Samples of API action store in Cloudtrail logs are:
 start and stop EC2 instances, uploading and deleting objects from S3, adding or removing security groups from a VPC, adding or dropping indexing from a DynamoDB table, and many more.See Diagram in Draw.io/CloudTrial-logs

### Items contain in the Event logs are:
    Who performed the request
    The date and time that the request was made
    The source IP of the request
    How the request was made
    What action is being performed
    The region the action is being conducted in
    The response to the request

### Characteristics of CloudTrail
You can configure trails to readonly, write-only or all management and data events. 

Cloudtrail by default logs only the management events.

CloudTrail captures and records users and resources activities that occur in an account(s).

CloudTrail  records the activity as a CloudTrail event

CloudTrails logs are eventually push to S3 Bucket every 5 minutes. 

CloudTrail Lake enable you to run SQL-Like Query in Trial Log

### Security of CloudTrail logs

CloudTrails Log should be encrypted either with AWS Managed Keys or Customer Managed Keys using AWS KMS services.

Enable log file integrity (Log file integrity validation helps you verify that log files have remained unchanged since CloudTrail delivered them)

#### Benefit of CloudTrails
=======================
1. Helps you to determines who do what and on what resources an action was performed
2. Enabled you to manage compliance report easily
3. Give you the ability to monitor, alarm and react to the events happened in your account.
4. Easy access to search through the logs using cloudwatch services.

### Setting up CloudTrail
============================

When you set up a cloudTrail in the management console, it enables trail for all the regions. To enable CloudTrail for a specific region, is only possible if we use AWS CLI.

