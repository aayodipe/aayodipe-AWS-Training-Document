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
