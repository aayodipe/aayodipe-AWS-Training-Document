#### INSTANCE_TYPE
====================

AWS provides a wide selection of instance types purposely created and optimized for to fit different use cases. It allows you to customize your compute need for different workload.

# Families of Instance Type
==============================

Since there are many type of workload moving to the cloud, each have there own specific needs, thus AWS Create several families of EC2 Instance. Each of these families contains one or more instance types and has a preferred application profile. 

1. General-purpose Instances
2. Computer-optimized Instances
3. Memory-Optimized Instances
4. Accelerated computing instances
5. Storage-Optimized Instances.


##  1. General-Purpose Instances
===============================
These Instances BALANCE memory, compute, and network resource. Good enough for lots of workloads. The General purpose Instance include the T classes( such as t2.micro, t3. Micro,t2.nano etc). GP is a good starting point if you do not have full details or classification of your workload.

Likely use case: Web Servers, Development and Test Servers, Code Repositories, small to mid-size database etc

## 2. Compute-Optimization
===============================
Compute-optimized instances are main or customized for workloads that benefit from high-performance processors. For Instance, an application that can do a lot of calculation at a very high speed. The instances in this family also have the ability for enhanced networking pre-built in, along with being Elastic Block Store (EBS)-optimized by default. Mostly the C-class such as c5.metal, c4.large,c5.12xlarge etc

Likely use case includes:
    Batch processing workloads
    Media transcoding
    High-performance web servers
    High-performance computing (HPC)
    Scientific modeling
    Dedicated gaming servers and ad serving engines
    Machine learning inference and other compute-intensive applications

## Please Note ##
Bare metal instances, such as c5.metal, provide your applications with direct access to physical resources of the host server, such as processors and memory.

For More Info see https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/compute-optimized-instances.html


### 3. Memory-Optimized
====================
This family of instances is, as its name implies, designed for memory-intensive applications. They are designed to deliver fast performance capabilities on jobs that need lots of memory. The R-class families such as r5, r5a, r5n instances are in this categories.

Use cases: Open source databases, in-memory caches, and real-time analytics. 

### 4. Accelerated Computing Instance
================================
Accelerated computing instances use hardware accelerators, or co-processors that perform special functions much more efficiently than other processors. These functions can include data pattern matching, floating-point number calculations, and graphics processing. The G2, G3,  VT1 are in this categories 

Use cases: Speech recognition, high-performance computing, drug discovery, computational finance, and autonomous vehicles.

## 5. Storage-optimized Instances
=================================
Storage-optimized instances provide directly attached storage options that allow for a specialized storage needs. Storage optimized instances are designed for workloads that require high read and write from and to data set or database. The D2, D3, I and H1 instances are in this categories.

Use cases: NoSQL databases, data warehousing, Elasticsearch, in-memory databases, traditional databases, and analytics workloads.