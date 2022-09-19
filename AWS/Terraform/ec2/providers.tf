
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "break-glass"
  default_tags {
    tags = {
      "Environment"  = "Production"
      "Project_name" = "Splunk-training"
      "Owner"        = "TheCornelis"
    }
  }
}






