### DATA PROTECTION
===================
In this section, we would address how to protect the most important assets of company; Data and Information.
Amazon provide cloud native tools to protect our data in transit and at rest.

# DATA AT REST
================
Data at rest is a term used to describe all data in computer storage that is not currently being accessed or transferred. Data at rest is considered stable compared to data in the other states. It is not moving between systems or devices and is not being processed by a CPU

# DATA IN TRANSIT
=================
Data in transit or motion is data that is moving or being transferred between locations within or between computer systems. Data moving between cloud storage and a local file storage point or moving from one network to another is also considered in transit

# DATA IN USE
==============
Data in use is data that is currently being updated, processed, accessed and read by a system. Because data in use is directly accessible by one or more users, this is the state at which data is most vulnerable to attacks and when encryption is the most essential.

AWS Provide enterprise native tools in addition to traditional tools to help protect sensitive data stored in AWS cloud. 

Listed below are the AWS Native tools that we will consider for data protection.
    - Cryptography
    - AWS Key Management System- KMS
    - Understanding KMS
    - Creating Customer Managed Keys in KMS
    - Understanding the CloudHSM
    - Using Certificate Manager
    - Understand Amazon Macie

## Cryptography
==================
    ability to transform  standard text information into ciphertext using cryptographic algorithms and keys, such as the symmetric and asymmetric keys.

# Symmetric Encryption
=======================

In symmetric Encryption Algorithm, the same keys are used for both encrypt and decrypt data. The size of the key determine how secure the encryption would be.
Common Key for Sym

# Asymmetric Encryption
========================

When using asymmetric encryption, two distinct keys are used. One public Key and the other a private key. and both keys re mathematically derived.

Asymmetric can be use for the confidentiality and authentication.
Is used for confidentiality when used to encrypt sensitive data and is used as authentication mean when used to get access to an restricted area such as sign in to EC2

# Hashing Algorithm
===================
    A feature that applies an algorithm to a piece of information such as a password, generating a message digest, which is a string of digits created by a one-way hashing to general summary information. A hashing is irreversible.

# Key Management Service - KMS
==============================
AWS Key Management Service (AWS KMS) is a managed service that makes it easy for you to create and control the cryptographic keys that are used to protect your data. KMS can be integrated with more than 50 AWS services. Example include 
- Simple Storage Service - S3
- Relational Database Service - RDS
- CloudTrail
- Amazon Elastic Block Storage - EBS 
- etc

With KMS, you can ensure an end to end encryption of your application running in the cloud from encrypting the EBS attached to EC2, to encrypt the images stored on S3 and encrypt customer PII stored on RDS.


### KMS Components
===================

- Customer Managed Keys
- AWS Managed Keys
- Master Key - 
- Data Key - 

