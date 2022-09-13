terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "Terraform-IAC"
}


resource "aws_instance" "server1"{
  ami                     = "ami-05fa00d4c63e32376"
  instance_type           = "t2.micro"
  availability_zone       = "us-east-1a"
  disable_api_stop        = true
  disable_api_termination = true
  iam_instance_profile    = "AWSEC2AssumeRole"
  key_name                = "Demo-Saturday-key"
  tags = {
    "Name" = "Web-Server"
  }
}



