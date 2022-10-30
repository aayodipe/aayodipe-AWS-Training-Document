# Amazon Relational Database- RDS
====================================

# Data
========================
Data are plain facts about an entity. We people use these words data frequently and interchangeable with information, But both have lots of differences between them. Example include Images, Numbers, Dates

# Information
===================
Data themselves are fairly useless, but when these data are interpreted and processed to determine its true meaning, they becomes useful and can be named as Information.

# What is Database?
=====================
A database is an organized collection of structured information, or data, typically stored electronically in a computer system - Oracle.com

# Database management System -DBMS
=================================
Software that handles the storage, retrieval, and updating of data in a computer system.


# Type of Database Management System
========================================
1. Relational or SQL DBMS
2. NoSQL DBMS


# Relational Database/SQL/Structured Database Management System
================================================================
A relational database, also called Relational Database Management System (RDBMS) or SQL database, stores data in tables and rows also referred to as records. RDBMS works by linking information from multiple tables through the use of “keys.” A key is a unique identifier which can be assigned to a row of data contained within a table. This unique identifier, called a “primary key,” can then be included in a record located in another table when that record has a relationship to the primary record in the main table. When this unique primary key is added to a record in another table, it is called a “foreign key” in the associated table. The connection between the primary and foreign key then creates the “relationship” between records contained across multiple tables.
# Some of the common Relational Database are PostgreSQL, SQLite, MySQL and MariaDB.

# No-Relational/NoSQl Database Management System
===============================================
The non-relational database, or NoSQL database, stores data. However, unlike the relational database, there are no tables, rows, primary keys or foreign keys.  Instead, the non-relational database uses a storage model optimized for specific requirements of the type of data being stored.
# Some of the more popular NoSQL databases are MongoDB, Apache Cassandra, Redis, Couchbase and Apache HBase.

# Type of AWS Relational Database in the cloud
===============================
1. Relational Database Service - RDS
2. Aurora
3. Redshift

Both Amazon RDS and Aurora are transaction relational Database while Redshift is a data warehouse relation service.

# Type of AWS Non Relational Database
=====================================

1. DynamoDB 
2. DocumentDB 
3. ElastiCache 
4. MongoDB

# Amazon Relational Database Service - Amazon RDS
===================================================
Amazon Relational Database Service (Amazon RDS) is a 
    - Easy to set-up, operate and scalable
    - platform as a service database 
    - runs on ec2 with EBS volume
    - AWS does the underlying administrative work such as patching the Operating System, the database software, back-up, replication and failover
    - Present to customer as a database endpoint with configuration options. 
    - The resources created on the RDS is AZ scoped 
    - designed around the third party database engine such as MySQL, Mariadb, Postgres,Oracle, Microsoft SQLServer and custom RDS engine. 

# Amazon Custom RDS Engine is an Oracle or SQL server engine with option to for customer to access the underlying Operating System. This is for a specific requirement where the customer want to install software on the operating system but does not want to be responsible for the full infrastructure.


#### DEMO
============
# Download SQL server Management Studio
# https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16


# Learn Sql query
# https://www.tutorialspoint.com/mysql/mysql-drop-tables.htm

# Sample Query
- CREATE Database TutorialDB
- Create Database Tutorials;
- use Tutorials;
- select * from aws;
- create table aws(id int, name varchar(30), status varchar(10));
- insert into aws values (1, 'henry', 'present'), (2, 'Adeola', 'present')



# Working with backups
===========================
# Automated and Manual Backup with AWS Backup
Amazon RDS creates and saves automated backups of your DB instance during the backup window of your DB instance. RDS creates a storage volume snapshot of your DB instance, backing up the entire DB instance and not just individual databases. RDS saves the automated backups of your DB instance according to the backup retention period that you specify. If necessary, you can recover your database to any point in time during the backup retention period.

# Backup with Snapshot 
=========================
Amazon RDS creates a storage volume snapshot of your DB instance, backing up the entire DB instance and not just individual databases. You can create a new DB instance by restoring from a DB snapshot. You provide the name of the DB snapshot to restore from, and then provide a name for the new DB instance that is created from the restore. You can't restore from a DB snapshot to an existing DB instance; a new DB instance is created when you restore.

# Working With Read Replica
============================

# Demo
#  Amazon RDS Backup & Restore Using AWS Backup
================================================


# Amazon Aurora
==================
Amazon Aurora is a fully managed MySQL- and PostgreSQL-compatible relational database built for the cloud that combines the performance and availability of traditional enterprise databases with the simplicity and cost-effectiveness of open source databases.

# 5 times faster than mySQL and 3 times faster than Postgres Database

# Amazon Aurora DB clusters
=============================

# Primary DB instance – 
    Supports read and write operations, and performs all of the data modifications to the cluster volume. Each Aurora DB cluster has one primary DB instance.

# Aurora Replica – 
    Connects to the same storage volume as the primary DB instance and supports only read operations. Each Aurora DB cluster can have up to 15 Aurora Replicas in addition to the primary DB instance. 
    
    Maintain high availability by locating Aurora Replicas in separate Availability Zones. 
    
    Aurora automatically fails over to an Aurora Replica in case the primary DB instance becomes unavailable. 
    
    You can specify the failover priority for Aurora Replicas. Aurora Replicas can also offload read workloads from the primary DB instance.





















# Install MYSQL on Ubuntu EC2 Server 
=========================================
# sudo apt update
# sudo apt install mysql-server
# sudo systemctl status mysql


# Different between RDS vs Traditioinal DBS
========================================

# Traditional Database
=======================
# You are the admin
# Controlled oon the deloyed server
# Ful options are available at standup
# backup configuration methods by admin
# Responsible for OS and database patches

# RDS 
=========================
# Managed Services
# Controlled via AWS Console or AWS CLI
# Setup is streamlined
# Automatic backups
# Patching is automatic

