# SNS
==========

Amazon Simple Notification Service (Amazon SNS)
    Managed service that provides message delivery from publishers to subscribers (also known as producers and consumers). Publisher communicate asynchronously (immediately) with subscribers by sending message to a topic which is a logical access point and communication channel.

    Clients/Subscribers can subscribe to the SNS topic and receive published messages using a supported endpoint type, such as Amazon Kinesis Data Firehose, Amazon SQS, AWS Lambda, HTTP, email, mobile push notifications, and mobile text messages (SMS).

# Features of SNS
===================
# 1.  Application-to-application(A2A) messaging such:
    - Invoking Lambda Function with SNS Topic
    - SNS to Kinesis Data firehose delivery stream
    - SNS to Amazon SQS queues
    - CloudWatch to SNS to user

# 2. Application-to-person(A2P) notifications
    Application-to-person notifications provide user notifications to subscribers such as mobile applications, mobile phone numbers, and email addresses
# 3. Standard and FIFO topics
FIFO Topics
        Use a FIFO topic to ensure strict message ordering, to define message groups, and to prevent message duplication. Only Amazon SQS FIFO queues can subscribe to a FIFO topic.
Standard Topics:
        Use a standard topic when message delivery order and possible message duplication are not critical. All of the supported delivery protocols can subscribe to a standard topic
# 4. Message durability:
    Amazon provide multiple strategies to ensure that SNS Topic got delivered to the subscriber endpoint. Among the strategies employed are:
        a. Published Messages are stored across multiple servers in separated geographical location
        b. Delivery retry policy if a subscriber endpoint is not available
        c. Dead-letter queue to archive unable to deliver messages even after the delivery retry policy elapsed.
# Message archiving and analytics
    In addition to set up dead-letter queue, you can subscribe Kinesis Data Firehose delivery streams to SNS topics, which allow you to send notifications to additional archiving and analytics endpoints such as Amazon Simple Storage Service (Amazon S3) buckets, Amazon Redshift tables, and more.
# Message filtering
    By default, each subscriber receives every message published to the topic. To receive a subset of the messages, a subscriber must assign a filter policy to the topic subscription. When the incoming message attributes match the filter policy attributes, the message is delivered to the subscribed endpoint.
# .Message security
Server-side encryption protects the contents of messages that are stored in Amazon SNS topics, using encryption keys provided by AWS KMS

# Common SNS Scenario
======================
1. Application Alert
    such as a specific change to your Amazon EC2 Auto Scaling group, a new file uploaded to an Amazon S3 bucket, or a metric threshold breached in Amazon CloudWatch.
2. User notification
    For example, you could send e-commerce order confirmation information as user notifications.
3. Mobile Push Notifications
    For example, you can use Amazon SNS to send update notifications to an app

# Publishing large messages with Amazon SNS and Amazon S3
To publish large Amazon SNS messages, you can use the The Amazon SNS Extended Client Library for Java. This library is useful for messages that are larger than the current maximum of 256 KB, up to maximum of 2 GB.


For more information about subscription filter policy and Metadata attribute, see https://docs.aws.amazon.com/sns/latest/dg/example-filter-policies.html

# Amazon SNS message delivery retries
============================

Amazon SNS defines a delivery policy for each delivery protocol. The delivery policy defines how Amazon SNS retries the delivery of messages when server-side errors occur (when the system that hosts the subscribed endpoint becomes unavailable). When the delivery policy is exhausted, Amazon SNS stops retrying the delivery and discards the message—unless a dead-letter queue is attached to the subscription

# Amazon SNS event sources and destinations
A dead-letter queue is an Amazon SQS queue that an Amazon SNS subscription can target for messages that can't be delivered to subscribers successfully. Messages that can't be delivered due to client errors or server errors are held in the dead-letter queue for further analysis or reprocessing