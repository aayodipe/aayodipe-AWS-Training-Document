# DYNAMODB
================
Amazon DynamoDB is a 
- Fully managed NoSQL database service
- Provides fast and predictable performance with seamless scalability. 
- Lets you offload the administrative burdens of operating and scaling a distributed database so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling. 
- DynamoDB also offers encryption at rest, which eliminates the operational burden and complexity involved in protecting sensitive data. 
- You can scale up or scale down your tables' throughput capacity without downtime or performance degradation. 
- You can use the AWS Management Console to monitor resource utilization and performance metrics.
- DynamoDB provides on-demand backup capability. 
- It allows you to create full backups of your tables for long-term retention
- Archival data for regulatory compliance needs.
- DynamoDB allows you to delete expired items from tables automatically to help you reduce storage usage and the cost of storing data that is no longer relevant.



# DynamoDB highly Availability and Durability
==============================================
# For High Highly Availability, 
    DynamoDB spread the data and traffics for the tables over several servers that can handle the through the storage requirement.


# For Durability, 
    all the data for DynamoDB are stored on solid State Drives- SSDs, then replicated across multiple AZs in a single regions.

# DynamoDB Replication
    For HA and Durability, DynamoDB spread it's data across multiple servers and AZ in a region. To store the data in multiple region, DynamoDB multi-region replication is the best for this purpose.

# Components of DynamoDB
========================
- Table 
    A collection of Data. Example is the people tables
- Items 
    Each table contains zero or more items. Is a group of attributes that is uniquely identifiable among all other items
- Attributes    
    An Attribute is the data element in an item.
- Primary Key
    A primary key is a unique identifier for a single item in a DynamoDB table. When you create a table, you must specify the primary key name and type
- Secondary Key - Sort the data or collection of data in the an Item



# DynamoDB Data Encryption At Rest
==================================

Amazon DynamoDB encryption at rest 
    encrypts your data using 256-bit Advanced Encryption Standard (AES-256), which helps secure your data from unauthorized access to the underlying storage. The type of keys use for the encryption include;

    - AWS Owned Keys 
        AWS owned keys are not stored in your AWS account. They are part of a collection of KMS keys that AWS owns and manages for use in multiple AWS accounts. AWS services can use AWS owned keys to protect your data

    - AWS managed keys 
        are KMS keys in your account that are created, managed, and used on your behalf by an AWS service that is integrated with AWS KMS. You can view the AWS managed keys in your account, view their key policies, and audit their use in AWS CloudTrail logs. However, you cannot manage these KMS keys or change their permissions.
#       The AWS Managed Key uses Envelop Encryption Method

    - Customer Managed Keys
        Customer managed keys are KMS keys in your AWS account that you create, own, and manage.
        You have full control over these KMS keys, including establishing and maintaining their key policies, IAM policies, and grants; enabling and disabling them; rotating their cryptographic material; adding tags; creating aliases that refer to them; and scheduling them for deletion. 


# Cache
========
 A cache is a temporary data storage(Mostly on server Memory) location that stores copies of frequently accessed data or files. A cache can be local(on your system) or remote (e.g DynamoDB Dax)

# AWS DynamoDB Accelerator (DAX) 
============
Amazon DynamoDB Accelerator (DAX) is a fully managed, highly available, in-memory cache for Amazon DynamoDB that delivers up to a 10 times performance improvement—from milliseconds to microseconds—even at millions of requests per second.


# How Dax Work 
==================
If DAX has the item available (a cache hit), DAX returns the item to the application without accessing DynamoDB.

If DAX does not have the item available (a cache miss), DAX passes the request through to DynamoDB. When it receives the response from DynamoDB, DAX returns the results to the application. But it also writes the results to the cache on the primary node.

















## Example of a DynamoDB table, items and Attributes

People  - 
{
    "PersonID": 101,
    "LastName": "Smith",
    "FirstName": "Fred",
    "Phone": "555-4321"
}

{
    "PersonID": 102,
    "LastName": "Jones",
    "FirstName": "Mary",
    "Address": {
                "Street": "123 Main",
                "City": "Anytown",
                "State": "OH",
                "ZIPCode": 12345
    }
}

{
    "PersonID": 103,
    "LastName": "Stephens",
    "FirstName": "Howard",
    "Address": {
                "Street": "123 Main",
                "City": "London",                                    
                "PostalCode": "ER3 5K8"
    },
    "FavoriteColor": "Blue"
}

# The above is a Table of People that contains three Items and each items contain attributes such as PersonID, LastName, FirstName,Address and FavoriteColor.

Like SQL Database, Each Items in the DynamoDB Tables also have a unique Identifies or Primary Key that uniquely Identify the Item among other items.

Unlike SQL, DynamoDB Table is schemaless, which mean it does not have a predefined attributes of values.







# Artist: No One You Know; songTitle: Call Me Today
# Artist: No One You Know; songTitle: My Dog Spot
# Artist: No One You Know; songTitle: Somewhere Down The Road
# Artist: The Acme Band; songTitle: Still in Love
# Artist: The Acme Band; songTitle: Look Out, World