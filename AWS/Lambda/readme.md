# Lambda Concept
================
- Function
    A function is a resource that you can invoke to run your code in Lambda. A function has code to process the events that you pass into the function or that other AWS services send to the function.

- Trigger
    A trigger is a resource or configuration that invokes a Lambda function.

- Event
    An event is a JSON-formatted document that contains data for a Lambda function to process. The runtime converts the event to an object and passes it to your function code. When you invoke a function, you determine the structure and contents of the event.

- Execution environment
    An execution environment provides a secure and isolated runtime environment for your Lambda function.

- Instruction set architecture
    The instruction set architecture determines the type of computer    processor that Lambda uses to run the function.

- Deployment package
    You deploy your Lambda function code using a deployment package. Lambda supports two types of deployment packages:

    * A .zip file archive that contains your function code and its dependencies. Lambda provides the operating system and runtime for your function.

    * A container image that is compatible with the Open Container Initiative (OCI) specification

- Runtime
    The runtime provides a language-specific environment that runs in an execution environment. 

- Concurrency
    Concurrency is the number of requests that your function is serving at any given time. When your function is invoked, Lambda provisions an instance of it to process the event. 
