terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# ==================================
# Provider
# ====================================
provider "aws" {
  region = "us-east-1"
}



# ==================================
# Data
# ====================================

data "aws_eip" "by_public_ip" {
  tags = {
    "Name" = "mykey"
  }
  #   public_ip = "52.71.244.194"
}


# ==================================
# Resources
# ====================================


resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-09d3b3274b6c5d4aa"

}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = resource.aws_instance.web.id
  allocation_id = data.aws_eip.by_public_ip.id
}

output "key" {
  value = data.aws_eip.by_public_ip.public_ip
}







# Demo 2
resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "main"
  }
}