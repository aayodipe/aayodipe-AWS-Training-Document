variable "key-pair" {
  type        = string
  description = "This is the key pair for the ec2"
  default     = "splunk"
}

variable "ports" {
  type        = list(number)
  description = "(optional) describe your variable"
}