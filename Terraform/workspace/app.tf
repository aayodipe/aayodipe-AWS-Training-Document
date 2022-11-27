# Development  instance_type = t2.nano    tags = Development_instance, Dev_VPC
# Staging   = instance_type = t2.Micro    tags = Staging_Instance Staging_VPC
# Production = instance_type = t3.micro   Tags Production_Instance Pro_VPC
locals{
    instance_types = {"development"="t2.nano", "production" ="t3.micro"}
    production = "Production"

}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "${terraform.workspace}_VPC" # Development_Instance, Production_Instance, Staging_Instance
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0f5e8a042c8bfcd5e"
  instance_type = "${terraform.workspace}" == "production" ? "t3.micro" : "t2.nano"
  tags = {
    Name = "${terraform.workspace}_Instance"
  }
  key_name = "demo"
}



