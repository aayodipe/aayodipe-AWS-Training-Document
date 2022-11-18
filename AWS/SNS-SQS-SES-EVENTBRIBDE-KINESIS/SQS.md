# Distributed System
=======================
3 Main Part of the distributed messaging system:

1. Producer and the Consumer
2. The distribution server(SQS and SNS)
3. The Message



# Amazon Simple Queue Service(SQS)
=============================

Amazon Simple Queue Service (SQS)
    A managed message queuing service that enables you to decouple and scale microservices, distributed systems, and serverless applications. 
    
    SQS is designed so that you can send, store, and receive messages between software components at any volume, without losing messages or requiring other services to be available.

# Amazon SQS queue types
========================
    Amazon SQS supports two types of queues – 
    - Standard queues (default Queue)
    - FIFO queues

# Amazon SQS Standard queues
    - Standard queues support a nearly unlimited number of API calls per second, per API action (SendMessage, ReceiveMessage, or DeleteMessage). 
    
    - Standard queues support at-least-once message delivery. 
    
    - Occasionally more than one copy of a message might be delivered out of order. Standard queues provide best-effort ordering which ensures that messages are generally delivered in the same order as they're sent.
    
    - You can use standard message queues in many scenarios, as long as your application can process messages that arrive more than once and out of order


# Amazon SQS FIFO (First-In-First-Out) queues
    FIFO (First-In-First-Out) queues have all the capabilities of the standard queues, but are designed to enhance messaging between applications when the order of operations and events is critical, or where duplicates can't be tolerated.
    If your system requires that order be preserved, AWS recommend using a FIFO (First-In-First-Out) queue.

 # Configuring queue parameters
 ================================

 # Visibility timeout – 
    Immediately a message is pull by a consumer, it remains in the queue. To prevent other consumers from processing the message again, Amazon SQS sets a visibility timeout, a period of time during which Amazon SQS prevents other consumers from receiving and processing the message. 
    
    * The default visibility timeout for a message is 30 seconds. 
    * The minimum is 0 seconds. 
    * The maximum is 12 hours.

    * For standard queues, the visibility timeout isn't a guarantee against receiving a message twice
# Message retention period – 
    The amount of time that Amazon SQS retains messages that remain in the queue. By default, the queue retains messages for 4 days. You can configure a queue to retain messages for up to 14 days. 

# Delivery delay – 
    The amount of time that Amazon SQS will delay before delivering a message that is added to the queue.
# Maximum message size – 
    The maximum message size for this queue. The range is from 1 KB to 256 KB. The default value is 256 KB.

# Receive message wait time – 
    The maximum amount of time that Amazon SQS waits for messages to become available after the queue gets a receive request. 20 sec


# Polling:
    - Short Polling 

    - Long Polling


    retention period == 4
    current retain period = 2
    DLQ= 2
    Stays in DLQ for 2 more days before it got deleted.