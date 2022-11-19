# Production Public Subnet -Az1a
# meta-augement
# 1. count
# 2. for-each
        # - toset
        # - map
# locals {
# subnet_cidr_block_map  = {
#     prod-web-sb = "10.0.0.0/24",
#     prod-app-sb-1 = "10.0.1.0/24",
#     prod-app-sb-2 = "10.0.2.0/24",
#     prod-db-cache-sb =  "10.0.3.0/24",
#     prod-db-sb = "10.0.4.0/24"
# }
# subnet_cidr_block_List= ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]

# }



# WORKING WITH COUNT
# resource "aws_subnet" "prod-public-subnet-1a" {
#     count = 10
#   vpc_id     = aws_vpc.prod-vpc.id
#   cidr_block = "10.0.${count.index}.0/24" # 10.0.0.0/24
#   availability_zone = "us-east-1a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "prod-private-sb-${count.index}"
#   }
# }



# # WORKING WITH FOR_EACH(TOSET)
# resource "aws_subnet" "prod-public-subnet-1a" {
#   for_each = toset(local.subnet_cidr_block_List)
#   vpc_id     = aws_vpc.prod-vpc.id
#   cidr_block = each.key
#   availability_zone = "us-east-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "prod-private-sb-${each.key}"
#   }
# }


# # WORKING WITH FOR_EACH(MAP)
# resource "aws_subnet" "prod-public-subnet-1a" {
#   for_each = local.subnet_cidr_block_map 
#   vpc_id     = aws_vpc.prod-vpc.id
#   cidr_block = each.value  # prod-web-sb
#   availability_zone = "us-east-1a"
#   map_public_ip_on_launch = false

#   tags = {
#     Name = each.key
#   }
# }


# Production Public Subnet -Az1a
resource "aws_subnet" "prod-public-subnet-1a" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "prod-web-sb "
  }
}

# Production Private Subnet1 -Az-1a
resource "aws_subnet" "prod-private-subnet1-1a" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-app-sb-1"
  }
}
# Production Private Subnet2 -Az-1a
resource "aws_subnet" "prod-private-subnet2-1a" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-app-sb-2 "
  }
}
# Production Private Subnet3 -Az-1a
resource "aws_subnet" "prod-private-subnet3-1a" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-db-cache-sb"
  }
}
# Production Private Subnet4 -Az-1a
resource "aws_subnet" "prod-private-subnet4-1a" {
  vpc_id     = aws_vpc.prod-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-db-sb"
  }
}


