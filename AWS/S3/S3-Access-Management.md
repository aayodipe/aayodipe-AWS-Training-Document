# Amazon S3 Access Management
==============================
Amazon S3 provide lots of feature for managing access to your S3 bucket and objects.  By default, users only have access to S3 Bucket that they create and access is denied for every other user apart from the owner.

In this session, we are going to learn how to grant granular permission to our bucket and object base on different use case.

Listed below are the topics we would look at for access management.


1. S3 Block Public Access
       This block access to S3 buckets and objects. This is turn on at the account and object level.

2. AWS Identity and Access Management(IAM)
        This enables admin to create IAM users for your AWS Account and grant access to the S3 resources base. This is used to target access for a specific user or a group.
3. Bucket Policies(Resource-based policies) 
        Use similar policy configuration to IAM to restrict access to S3 Bucket.
<!-- 4. Amazon S3 Access Points
        Configure named network endpoints with dedicated access policies to manage data access at scale for shared datasets in Amazon S3. -->
5. Access Control List(ACLs)- Not recommended
        Grant read and write permissions for individual buckets and objects to authorized users. 
6. S3 Object Ownership
        You, as the bucket owner, automatically own and have full control over every object in your bucket, and access control for your data is based on policies.


# BLOCK PUBLIC ACCESS TO YOUR AMAZON S3
=======================================
By Default, Bucket, Object and Access Point do not have public access. This feature, block public access is available at the account level, the bucket level and the access point level. It provide settings for blocking access to S3 resources regardless of how the resources are created.

If Block public access is enabled, no public access would be allow to S3 Resources in the account.

* The Block Public Access at the Account and bucket level affect  on the bucket, the objects and the access point. But the block public access at access point do not independently affect the bucket or object if Access point is not set. 

* Amazon S3 Block Public Access provides four settings. All the 4 setting can be used all together or individually or in any combinations.

*  If the block public access settings for the access point, bucket, or account differ, then Amazon S3 applies the most restrictive combination of the access point, bucket, and account settings.

# BUCKET POLICIES
==================
- A bucket policy is a resource-based policy that you can use to grant access permissions to your bucket and the objects in it. 
- Only the bucket owner can associate a policy with a bucket.  - The permissions attached to the bucket apply to all of the objects in the bucket that are owned by the bucket owner. These permissions do not apply to objects owned by other AWS accounts.


Demo
ListBucket permission
=========================

1. Give access to all buckets, prefix and objects using bucket policy [done]
2. Give full access to a specific bucket and prefix and object inside the bucket  (use url of the bucket).[done]
3. Give limited access(ListBucket) to a specific bucket but denied access to the object in the bucket. [done]
4. Denied access to a specific bucket but allow access to every other bucket [done]
5. Deny access to a specific prefix but allow access to every other prefix in  a bucket [done]
6. Denied Access to a specific nested Folder(folder/folder1) but allow access to others [done]
7. Denied Access to a specific file [done]


# Host A Website with S3 Bucket(Demo)
=================================



# Sharing objects using presigned URLs
=====================================