# data "aws_instance" "foo" {
#   instance_id = "i-instanceid"

#   filter {
#     name   = "image-id"
#     values = ["ami-xxxxxxxx"]
#   }

#   filter {
#     name   = "tag:Name"
#     values = ["instance-name-tag"]
#   }
# }