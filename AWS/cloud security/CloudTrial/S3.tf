resource "aws_s3_bucket" "cloudtrail-bucket-demo" {
  bucket        = "tf-cloudtrail-demo"
  force_destroy = true
  tags = {
    Name        = "cloud-trail-log"
    Environment = "Dev"
  }
}
// S3 Buckey Attached Policy
resource "aws_s3_bucket_policy" "cloudtrail-bucket-demo-policy" {
  bucket = aws_s3_bucket.cloudtrail-bucket-demo.id

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "arn:aws:s3:::tf-cloudtrail-demo"
        },
        {
            "Sid": "AWSCloudTrailWrite",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::tf-cloudtrail-demo/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
        
 ]
}
POLICY
}
output "tf-cloudtrail-demo-arn" {
  value = aws_s3_bucket.cloudtrail-bucket-demo.arn
}