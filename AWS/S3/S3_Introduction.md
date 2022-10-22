# What is Simple Storage Service (S3)?
S3 is where individuals, application or some AWS services(e.g cloudtrail,vpc flow log etc) store there data. It is an object storage service that offers industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can use Amazon S3 to store and protect any amount of data for a range of use cases. 

S3 can be integrated with other AWS services or some external service running on-premise

# Sample data that can be store in S3 include:
    - Maintaining Backup Archive, Log files and disaster recovery images
    - Run Analytics on a big data
    - Hosting static websites

S3 Topics we would cover includes:
   - How S3 Objects are saved, managed and accessed
   - How to choose from among the various classes of storage to get the right balance of durability,availability and cost
   - How  to manage long-term data storage lifecycle by incorporating Amazon Glazier into our design that is how to archive our long term data
   - What AWS service can be used to help with data storage and operations.


# What is a S3 Bucket?
=======================
A bucket is a container for objects. An object is a file and any metadata that describes it.

To store an object in Amazon S3, you create a bucket and then upload the object to the bucket. When the object is in the bucket, you can open it, download it, and move it. When you no longer need an object or a bucket, you can clean up your resources.

By default, AWS allow you to create 100 Buckets per account. Like other AWS services, you can ask to raise the limit.

An AWS S3 Bucket and it's contents exist within a single AWS region, however, the bucket name you choose for your bucket must be globally unique within entire AWS cloud.

# You can access the object you stored in a S3 bucket using url s3.amazonaws.com/bucketname/ objectname and s3://bucketname/objectname using AWS CLI

# S3 Pricing 
With Amazon S3, you pay only for what you use. You do not incur cost for data ingres but you do incur cost for storing data in S3 Bucket and also for data egress. 

# DEMO
====================
Creating a Bucket and a file.
BucketName/shared-folder/development/

# Prefixes and Delimiters
=========================
You can use prefixes to organize the data that you store in Amazon S3 buckets. A prefix is a string of characters at the beginning of the object key name.

A  key or key prefix is a string of characters that can be the complete path in front of the object name (including the bucket name). For example, if an object (123.txt) is stored as BucketName/shared-folder/development/123.txt, the prefix might be “BucketName/Project/WordFiles/123.txt”. The prefix can be any length, including the entire object key name.

For example, if you were storing information about cities, you might naturally organize them by continent, then by country, then by province or state. Because these names don't usually contain punctuation, you might use slash (/) as the delimiter. The following examples use a slash (/) delimiter.

# Ways to Identify an object in a Bucket
======================================
1. Key - which is the object name 
2. Version ID( if S3 version is enabled)
# Working With Large Objects
=============================
- Unlimited amount of data  can be store in an S3 Bucket 
- A single object in a bucket can not be more than 5 TB. 
- An Individual upload can not be more than 5 GB. 
- Use MUltipart Upload for any object more than 100 MB (AWS Recommendation)
- Multipart uploads break the object into an individual parts and upload them individually into S3 Bucket while then form whole file after upload. If a part failed to upload, that part only can be re-upload.
- If you use CLI to upload a file that is bigger than 100MB, multipart upload will be automatically used to upload the file to S3 bucket
- Use Amazon S3 transfer acceleration for long distance transfer of large objects/files to and from Amazon S3 to speed up the transfer by as much as 50 - 500%. If you use transfer Acceleration for long distance large files transfer, AWS would first transfer that files to your nearest edge locations while would from there transfer to S3 Bucket using Amazon's internal network.

# Amazon S3 Bucket Encryption
=============================
Unless data or files stored in an Amazon S3 is intended to be publicly accessible such as for web site, data stored(at rest) should always be encrypted using encryption keys.

Data Stored can either be protected using server-side or client-side encryption.

# Server-Side Encryption
========================
AWS Platform is the server-side when it come to server-side encryption on AWS Cloud. The server-side encryption involves having AWS encrypt your data objects as they're saved and decrypt them when you send proper authenticated requests for retrieval. There are three options for server-side encryption
1. Server-Side Encryption with Amazon S3-Managed Keys(SSE-S3)- 
    AWS uses it's own enterprise-keys to managed both the encryption and decryption process.

2. Server-Side Encryption with AWS KMS-Managed Keys(SSE-KMS).
     With this, you have the option to upload your own key through AWS KMS service or Create a Key through the AWS KMS service. This process use an envelop key  and have an audit trail for you to track the key usage.
3. Server-Side Encryption with Customer-Provided Keys (SSE-C). 
    This lets you provide your own keys for S3 to apply to its encryption.

# Client Side Encryption
============================
This is when you encrypt your data before you upload it to Amazon S3 Bucket using Keys generated from either AWS KMS or customer provided Keys.

# S3 Durability and Availability
================================
# S3 Durability
S3 measures durability as a percentage.For instance, the 99.999999999(11 9's) percent durability guarantee for most s3 classes and Amazon Glazier corresponds to an average annual expected loss of 0.000000001% of objects meaning that if you store 10,000,000 objects within Amazon S3 bucket you can expect to incur a loss of 1 single object within 10,000 years. This is possible because Amazon replicate your data stored on S3 to at least 3 different Availability zones.

# What this means is that, realistically, data stored in S3 Bucket can not be loss due to AWS infrastructure failure. This is backed with the Amazon S3 Service Level Agreement

# Common Advice from experts- you should always back your data to multiple locations using different services and media types. No company is beyond natural disaster or expose to external attack

# Amazon Reduced Redundancy Storage (RRS)- Officially not recommended only have 99.99 percent of durability.

# S3 Availability
Objects availability is also measured as a percentage. This measure the percentage you can expect fo an object to be available when it is requested within a year. 

Amazon S3 Standard Class guarantee 99.99% of Availability for an Object stored in a S3 Bucket to be available within a year. Meaning that you can only expect downtime of 9 hours within a year for for any object request. For full detail of the percentage of Availability backed by SLA for other Class see https://aws.amazon.com/s3/storage-classes/ or image in this folder.

 
# Eventually Consistent Data
============================

AWS replicate file upload to multiple availability zone or locations. Thus, this replication can cause a brief delays while updates existing objects propagate across the AWS system.

Uploading a new version of a file or deleting an old version altogether can result to one site reflecting new state with another still unaware of any the changes to the file.

So to account for this, while creating an application that will use s3 for file or content storage, prepared the application for eventual consistent for up to 2 seconds or less. 

# S3 Versioning
================
Versioning in Amazon S3 is a means of keeping multiple variants of an object in the same bucket. You can use the S3 Versioning feature to preserve, retrieve, and restore every version of every object stored in your buckets. With versioning you can recover more easily from both unintended user actions and application failures. 


# S3 Object Lifecycle
========================

AWS let's you automate the object lifecycle by moving objects that are not frequently in used or archive objects to infrequent Access class and Glazier respectively using Amazon S3 Intelligent-Tiering (S3 Intelligent-Tiering). However, you can as well configure this manually by yourself instead of paying for Amazon S3 Intelligent-Tiering (S3 Intelligent-Tiering) to do that for you automatically.

You might have a new object to stay in the S3 Standard for the first 30 days, after which they will move to the cheaper S3 One Zone Infrequent Access for another 30 days, then can be moved to Glazier if regulatory required such file or object to be keep for a specific period of time before permanently deleted.