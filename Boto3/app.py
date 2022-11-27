
import boto3
session = boto3.session.Session(
access_key_ID = ""
secret_access_key =""
)

s3_client = session.client('s3')
s3_client.create_bucket(
    ACL = "public-read",
    Bucket  ="boto3-bucket3498623483490"
)
