terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"      
      version = "~>4.39.0"     
 
    }
  }
}

//Provider Block Type
provider "aws" {
  # Configuration options
  region = "us-west-1"
}


// Resource Block Type
# Create EC2 Instance
resource "aws_instance" "west-server1" {
  count =2
  ami           = "ami-02ea247e531eb3ce6"
  instance_type = "t2.micro"
  availability_zone = "us-west-1a"
  iam_instance_profile = "ec2-assume-role"
  tags = {
    Name = "web-${count.index}"
  
  }
}     



