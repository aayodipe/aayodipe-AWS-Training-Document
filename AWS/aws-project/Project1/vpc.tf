resource "aws_vpc" "prod-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "Prod-vpc",
    Environment = "Production",
    team        = "Security",
    MonthCreated = "November",
    Owner = "Yemi"
    department = "developer"
  }
}

resource "aws_vpc" "dev-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "Dev-vpc",
    Environment = "Production",
    team        = "Security",
    MonthCreated = "November",
    Owner = "Yemi"
    department = "developer"
  }
  # lifecycle {
  #   create_before_destroy = true
  # }
}
output "prod-vpc-output" {
  value = resource.aws_vpc.prod-vpc.cidr_block
}