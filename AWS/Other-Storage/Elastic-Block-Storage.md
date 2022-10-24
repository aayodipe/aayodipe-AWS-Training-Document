#### Elastic Block Storage (EBS)
================================
EBS is a service used with EC2 but it should be clearly stated that they are both separate services. EBS is a storage service that provides network-based storage that is allocated in the same AZs as the instances then mounted for usage.

Instance Store on the other hand is a storage device that is physically attached to the host instance. Not all instance have an instance store type attached to them and the size of the instance store attached to an instance depend on the instance type.

### Different between Instance Store and Elastic Block Store
===========================================================
1. Instance store is physically attached to the EC2 Instance, While EBS is only mounted on the instance.Thus you can detached it

2. Data on Instance stored does not persist through stop, termination or instance failure. Data  stored on EBS persist be default. EBS can be terminated during instance termination by enabled "deleteontermination"

3. EBS volumes can either be allocated at the time of instance creation and as an additional volume during when the instance is already in use 

## TYPE of EBS Volumes   "persist"
=======================
There are three main type of EBS Volumes namely the Solid State drive(SSD), hard disk drive and . They diff in term of their Performance and the cost.

## 1. Solid State Drive(SSD)
    Optimized for heavy read and write operation. It is useful for where a higher number of IOPs is needed. There are two type of SSD
#     a. General-Purpose SSD:
        Give balance between cost and performance.Use case is for development and test environment. The gp2 and gp3 class. gp3 is the latest
        
        use case: These include virtual desktops, medium-sized single instance databases, latency sensitive interactive applications, development and test environments, and boot volumes. We recommend these volumes for most workloads

#     b. Provisioned IOPS SSD:
        Use for mission critical workloads where performance is key, such as database and caches

## 2.  Hard Disk Drives(HDD): 
    Hard Disk Drives (HDD): This is a type of drive that is optimized for streaming workloads where performance is a necessity due to constant reads and/or writes. There are two types of HDD EBS volumes available for provisioning:

    a. Throughput-optimized HDD: This type of EBS volume is best for data warehouses, log servers, or big data workloads.

    b. Cold HDD: This is a low-cost HDD that is best used for infrequently accessed data.
## 3.Previous generation: 
    Hard disk drives that you can use for workloads with small datasets where data is accessed infrequently and performance is not of primary importance. AWS recommend that you consider a current generation volume type instead. 

# Amazon EC2 instance root device volume
When you launch an instance, the root device volume( A storage on the computer) contains the image used to boot the instance. This root device volume can either be an Instance store or an Elastic Block Storage(EBS)

# Naming a Device Volume
Either the device volume that you attached when you start an instance(Root device Volume) or the device that you later attached to an already exiting/or running instance(data volume), you need to specified the name of the device volume. The default name for root device is "xvda". For the data device volume, you have to give it a name. See here for supported names https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html


# Demo
========
1. Create a EBS Volume
2. Attach an Amazon EBS volume to an instance
3. Make an EBS Available for you(Format and mount an attached volume)
    - lsblk
    - sudo file -s /dev/device-name(if data, it means the volume is not ready to use i.e no file system)
    - (optional) sudo yum install xfsprogs (to Install device software to create a file system)
    - sudo mkfs -t xfs /dev/${device-name} - (make sure to change device name to your device name)
    - sudo mkdir /data
    - sudo mount /dev/xvdf /data
