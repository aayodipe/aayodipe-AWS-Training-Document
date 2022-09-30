#### Elastic Block Storage (EBS)
================================
EBS is a service used with EC2 but it should be clearly stated that they are both separate services. EBS is a storage service that provides network-based storage that is allocated in the same AZs as the instances then mounted for usage.

Instance Store on the other hand is a storage device that is physically attached to the host instance. Not all instance have an instance type attached to them and the size of the instance store attached to an instance depend on the instance type.

### Different between Instance Store and Elastic Block Store
===========================================================
1. Instance store is physically attached to the EC2 Instance, While EBS is only mounted on the instance.Thus you can detached it

2. Data on Instance stored does not persist through stop, termination or instance failure. Data  stored on EBS persist be default. EBS can be terminated during instance termination by enabled "deleteontermination"

3. EBS volumes can either be allocated at the time of instance creation and as an additional volume during when the instance is already in use 

## TYPE of EBS Volumes
=======================
There are three main type of EBS Volumes. They diff in term of their Performance and the cost.

## 1. Solid State Drive(SSD)
    Optimized for heavy read and write operation. It is useful for where a higher number of IOPs is needed. There are two type of SSD
#     a. General-Purpose SSD:
        Give balance between cost and performance.Use case is for development and test environment. The gp2 and gp3 class. gp3 is the latest
        
        use case: These include virtual desktops, medium-sized single instance databases, latency sensitive interactive applications, development and test environments, and boot volumes. We recommend these volumes for most workloads

#     b. Provisioned IOPS SSD:
        Use for mission critical workloads where performance is key, such as database and caches

## Hard Disk Drives(HDD): 
    Hard Disk Drives (HDD): This is a type of drive that is optimized for streaming workloads where performance is a necessity due to constant reads and/or writes. There are two types of HDD EBS volumes available for provisioning:

a. Throughput-optimized HDD: This type of EBS volume is best for data warehouses, log servers, or big data workloads.

b. Cold HDD: This is a low-cost HDD that is best used for infrequently accessed data.
Previous generation: This is a type of drive that is best used for smaller datasets that are not of critical importance. Rather than being on SSDs, these EBS volumes are on magnetic disks, which means they are not as performant as the other two types of EBS volumes. There is only one type of previous-generation EBS drive available and it's best used for data that is infrequently accessed. 