resource "aws_vpc" "production" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Production-vpc"
  }
}

