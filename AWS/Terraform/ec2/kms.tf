# resource "aws_kms_key" "ami-kms-key" {
#   description             = "KMS key 1"
#   deletion_window_in_days = 10
#   tags = {
#     "Name" = "Terraform-Key"
#   }
# }