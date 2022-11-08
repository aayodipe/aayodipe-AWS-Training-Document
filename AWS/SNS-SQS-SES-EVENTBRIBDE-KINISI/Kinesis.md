# DATA ANALYTICS
==============
Data analytics 
    is the process of analyzing raw data in order to draw out meaningful, actionable insights.

# AWS Serve for Analytics
========================
1. AWS Kinesis
2. Data Pipeline
3. Elastic MapReduce
4. Machine Learning
5. Amazon Athena
7. Amazon Glue

# Amazon Kinesis 
======================
    is a managed, scalable, cloud-based service that allows real-time processing of streaming large amount of data per second. It is used to collect, store, and process data from large, distributed streams such as event logs and social media feeds, S3 bucket, CloudWatch log etc in real time. After processing the data, Kinesis distributes it to multiple consumers simultaneously.

   Amazon Kinesis enables you to process and analyze data as it arrives and respond instantly instead of having to wait until all the data is collected before the processing can begin.

# Feature of AWS Kinesis
========================
# Kinesis Video Streams
    Amazon Kinesis Video Streams is a fully managed AWS service that you can use to stream live video from devices to the AWS Cloud analytics or custom application analytics
# Kinesis Data Streams- (KDS)
    Amazon Kinesis Data Streams is a scalable and durable real-time data streaming service that can continuously capture gigabytes of data per second from hundreds of thousand of sources. Kinesis Data Streams can be use to collect and process large streams of data records in real time.

   Processed records from Amazon Kinesis can be send to:
    - Kinesis data Stream dashboards, 
    - Use to generate alerts, 
    - Dynamically change pricing and advertising strategies,
    - Send data to a variety of other AWS services.

#   Data Source for Kinesis Data Streams are:
        - The type of data used can include IT infrastructure log data such as Server Log, OS logs, Window Logs etc
        - Application logs
        - Social media, 
        - Market data feeds, and 
        - Web click stream data. 
#   Benefit of the Kinesis Data Stream
        - It is commonly use for getting data from the data source in real time and aggregate the data to the data warehouse such as RedShift or Elastic Map-reduce cluster(EMR)

        - Data is put into Kinesis data streams in addition to its original source, this ensures durability and elasticity for the data. Data in Kinesis stream can be store for up to 365 days and replicated to 3 AZ with the regions

        - Put-to-get delay, the delay between when the data is put into the data stream and when it is available to consume is typically less than 1 second. This mean KDS application can start consuming the data immediately after the data is added.

        - AWS manages the operational burden of creating and running a data intake pipeline as a managed service
        
        - The elasticity of Kinesis Data Streams enables you to scale the stream up or down

        - Multiple Kinesis Data Streams applications can consume data from a stream, so that multiple actions, like archiving and processing, can take place concurrently and independently.
        - Data stored in the KDS are are separated or partition into Shard. Each of the Shard is guarantee a FIFO order to the consumer
        
# Kinesis Data Firehouse

Use Kinesis Data Firehouse to Send Log Data from Amazon VPC to Amazon CloudWatch
Step 1. Launch an Instance then instance Splunk Software on it.
Step 2. Create a CloudWatch log to store a VPC Flow log
Step 3. Create a VPC Flow log and chose the Cloudwatch log group as destination
Step 4. Create a Kinesis Data Firehose delivery stream with Splunk as a destination




Provide similar function but in very different ways

# Kinesis Data Streams
======================
Collecting Data and moving Data from point A to point B.





# AMAZON REDSHIFT AND ELASTIC MAP-REDUCE
============================================

# Different Between Amazon Redshift and EMR
============================================
# Amazon EMR 
    provides Apache Hadoop and applications that run on Hadoop. It is a very flexible system that can read and process unstructured data and is typically used for processing Big Data. However, learning Hadoop and related technologies can be quite difficult. ("With great power comes great responsibility!")

# Amazon Redshift 
    is a petabyte-scale data warehouse that is accessed via SQL. Data must be loaded into Redshift before being queried, which often requires some for of transformation ("ETL").

# So which one to choose?
==========================

# If you want to use SQL and you have structured data (eg CSV files), then Redshift is the simplest solution.

# If you want to process unstructured data (eg in strange formats rather than structured CSV files), Amazon EMR can provide a Hadoop system that is very capable.

# Sometimes people use both -- use Hadoop to transform data, then use Redshift for querying the data.

# If Amazon Redshift can fit your needs, then use it rather than Hadoop. Redshift is simpler to use because it presents itself as a standard SQL database that you can get going in a few minutes. All the cluster stuff is behind-the-scenes and you don't have to know much to use it.

