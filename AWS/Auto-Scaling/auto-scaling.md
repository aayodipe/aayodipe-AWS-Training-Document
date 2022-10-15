### EC2 Auto Scaling
=====================
The EC2 Auto Scaling service offers a way  to both afford application failure and recover from it when it eventually happens. Auto Scaling works by provisioning abd starting on your behalf a specific number of EC2 Instances. It can specifically add more EC2 Instances if more resources are needed or demanded.

The Auto Scaling uses either a launch configuration or a lunch template to automatically configured the instances that is launches. AWS Recommend the use of Launch Template for auto scaling.

# Launch Template
=================
This is similar to Lunch configuration in the sense that they are both use to configure the EC2 Instance Automatically lunch by autoscaling service. However,  lunch configuration that can only be used with EC2 Auto scaling, Launch Template can be used to manually launch an EC2 without the Auto Scaling services or use to create a spot fleet.

Launch Template are versioned, allowing you to change them after creation. Anytime you need to make changes to a launch template, you create a new version of it. AWS keeps all version. This makes it possible for you to flip or test multiple version.

# Auto Scaling Group
=======================

Auto Scaling group is a group of EC2 Instances that Auto scaling manages. When creating an Auto Scaling group, you must first specify either the launch configuration or launch template you created. Also, you must specified how many minimum and maximum the auto scaling group should not go beyond or above. You also have the option to set the desire numbers of instances you want Auto scaling to provision and maintain


# Minimum 
    Autoscaling will ensure that the number of healthy instances never goes below the minimum

# Maximum
    Autoscaling will also ensure that the number of healthy instances never exceeded the maximum value set
# Desire 
    Desire is an optional setting that must lie within the minimum and the maximum values

# Specifying an Application Load Balancer Target Group
    If you want to use application load balancer to distribute traffic into the instances launched by the auto scaling service, just plug in the name of the ALB target group when creating the Auto Scaling group.
# Health Checks Against Application Instance
   EC2 service automatically perform system and instance status check. By Default, the auto scaling group determine the health of an instance based on the EC2 health status check. However, if you are using an application load balancer to route traffic to your target group, the target group health check can be use by Auto scaling to check the determine the health of an instance in the auto scaling group, then terminate or remove and replace instance that is not performing.

# Auto Scaling Options
    1. Manual Scaling
       At any time, you can change the size of an existing Auto Scaling group manually. You can either update the desired capacity of the Auto Scaling group, or update the instances that are attached to the Auto Scaling group. Manually scaling your group can be useful when automatic scaling is not needed or when you need to hold capacity at a fixed number of instances.

    2. Dynamic Scaling Policies
        This is the nature of most aws managed resources such as Internet Gateway, Nat Gateway, S3, Load Balancer etc. 
        
        Dynamic scaling scales the capacity of your Auto Scaling group as traffic changes occur.
        EC2 Support the following dynamic scaling metrics:

            a. Target tracking scaling—Increase and decrease the current capacity of the group based on a Amazon CloudWatch metric and a target value. It works similar to the way that your thermostat maintains the temperature of your home—you select a temperature and the thermostat does the rest.

            b. Step scaling—Increase and decrease the current capacity of the group based on a set of scaling adjustments, known as step adjustments, that vary based on the size of the alarm breach.

            c. Simple scaling—Increase and decrease the current capacity of the group based on a single scaling adjustment, with a cooldown period between each scaling activity.

    3. Predictive 
        Use predictive scaling to increase the number of EC2 instances in your Auto Scaling group in advance of daily and weekly patterns in traffic flows.

 #       Predictive scaling is well suited for situations where you have:

            a. Cyclical traffic, such as high use of resources during regular business hours and low use of resources during evenings and weekends

            b. Recurring on-and-off workload patterns, such as batch processing, testing, or periodic data analysis

            c. Applications that take a long time to initialize, causing a noticeable latency impact on application

    4. Scheduled scaling 
        Helps you to set up your own scaling schedule according to predictable load changes. For example, let's say that every week the traffic to your web application starts to increase on Wednesday, remains high on Thursday, and starts to decrease on Friday. You can configure a schedule for Amazon EC2 Auto Scaling to increase capacity on Wednesday and decrease capacity on Friday.