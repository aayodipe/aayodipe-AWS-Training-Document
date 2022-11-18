import boto3
s3_client = boto3.client('s3')
ec2_client = boto3.client('ec2')



client.create_bucket(
   Bucket = "container123020"
)
ec2_client.terminate_instances(
    InstanceIds = ["i-0a7bb9d06bbbe59fe"]
)

ec2_client = boto3.client('ec2')

ec2_client.run_instances(
    ImageId ="ami-09d3b3274b6c5d4aa",
    InstanceType = "t2.micro",
    MaxCount  = 1,
    MinCount  = 1
)

