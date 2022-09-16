resource "aws_kms_key" "cloudtrail-key" {
  description              = "cloudtrail-key"
  deletion_window_in_days  = 10
  customer_master_key_spec = "RSA_2048"

}