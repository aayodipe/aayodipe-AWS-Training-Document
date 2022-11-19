resource "aws_route_table" "prod-rt" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "Prod_public_RT"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.prod-igw.id
  }
}


# Subnet Association
# -=====================

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.prod-public-subnet-1a.id
  route_table_id = aws_route_table.prod-rt.id
}

# =========================================================
#  PRODUCT APPLICATION 1
# =====================================================
## This is a route table for production application 1
resource "aws_route_table" "prod-app-rt" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-app-rt-1"
  }
 }


# Subnet Association
# -=====================

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.prod-private-subnet1-1a.id
  route_table_id = aws_route_table.prod-app-rt.id
}


# =============================================================

