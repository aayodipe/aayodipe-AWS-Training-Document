### AWS AUTOSCALING
====================

Amazon EC2 Auto Scaling helps you ensure that you have the correct number of Amazon EC2 instances available to handle the load for your application.

## Component of Auto Scaling 
=============================
# 1. Group
    Your EC2 instances are organized into groups so that they can be treated as a logical unit for the purposes of scaling and management.
    When you create a group, you can specify its minimum, maximum, and, desired number of EC2 instances.
    * Minimum - The minimum number of Instance(s) to launch at a time
    * Maximum - The maximum number of instances to launch when autoscaling takes effect.
    * Desire - The minimum number of instance that must be running at all time.
# 2. Configuration templates
    The group component uses a launch template, or a launch configuration (not recommended, offers fewer features), as a configuration template for its EC2 instances. You can specify information such as the 
#   Item in Configuration Templates: AMI ID, instance type, key pair, security groups, and block device mapping for your instances.

# 3.Scaling options
    Amazon EC2 Auto Scaling provides several ways for you to scale your Auto Scaling groups. 
#    * Based on the occurrence of specified conditions (dynamic scaling) 
#    * Based on a schedule.

# Amazon EC2 Auto Scaling benefits
====================================
#   Better fault tolerance. 
        Amazon EC2 Auto Scaling can detect when an instance is unhealthy, terminate it, and launch an instance to replace it. You can also configure Amazon EC2 Auto Scaling to use multiple Availability Zones. If one Availability Zone becomes unavailable, Amazon EC2 Auto Scaling can launch instances in another one to compensate.
#   Better availability. 
        Amazon EC2 Auto Scaling helps ensure that your application always has the right amount of capacity to handle the current traffic demand.

#   Better cost management. 
        Amazon EC2 Auto Scaling can dynamically increase and decrease capacity as needed. Because you pay for the EC2 instances you use, you save money by launching instances when they are needed and terminating them when they aren't.