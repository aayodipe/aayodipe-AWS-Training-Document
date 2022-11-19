resource "aws_vpc" "prod-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "Prod-vpc",
    Environment = "Production"
  }
}

data "aws_vpc" "dev-vpc" {
    id = "vpc-0eaff68506b772757"
}

output "dev-vpc-output"{
    value = data.aws_vpc.dev-vpc.arn
}

output "prod-vpc-output"{
    value = resource.aws_vpc.prod-vpc.cidr_block
}