resource "aws_cloudwatch_log_group" "cloudtrail-log" {
  name              = "cloudtrail-log"
  retention_in_days = 1
}