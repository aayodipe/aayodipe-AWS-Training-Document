# ==================================================
# prod-web-sb
# ==================================================

resource "aws_route_table" "prod-web-rt" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-web-sb"
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
  route_table_id = aws_route_table.prod-web-rt.id
}

# =========================================================
#  prod-app-sb-1 
# =====================================================
## This is a route table for production application 1
resource "aws_route_table" "prod-app-rt-1" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-app-rt-1 "
  }
}


# Subnet Association
# -=====================

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.prod-web-sb.id
  route_table_id = aws_route_table.prod-app-rt-1.id
}

# =========================================================
#   prod-app-sb-2 
# =====================================================
## This is a route table for production application 1
resource "aws_route_table" "prod-app-rt-2" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-app-rt-2 "
  }
}

# Subnet Association
# -=====================
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.prod-private-subnet2-1a.id
  route_table_id = aws_route_table.prod-app-rt-2.id
}


# =========================================================
#  prod-db-cache-rt
# =====================================================
## This is a route table for production application 1
resource "aws_route_table" "prod-db-cache-rt" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-db-cache-rt"
  }
}

# Subnet Association
# -=====================
resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.prod-private-subnet3-1a.id
  route_table_id = aws_route_table.prod-db-cache-rt.id
}

# =========================================================
#  prod-db-sb
# =====================================================
## This is a route table for production application 1
resource "aws_route_table" "prod-db-sb" {
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Name = "prod-db-sb1"
  }
}

# Subnet Association
# -=====================
resource "aws_route_table_association" "e" {
  subnet_id      = aws_subnet.prod-private-subnet4-1a.id
  route_table_id = aws_route_table.prod-db-sb.id
}