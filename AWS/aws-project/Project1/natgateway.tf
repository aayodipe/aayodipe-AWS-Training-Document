resource "aws_eip" "prod" {

  count = 2
}


resource "aws_nat_gateway" "database" {
  allocation_id = aws_eip.prod[0].id
  subnet_id     = aws_subnet.prod-private-subnet4-1a.id
  tags = {
    Name = "NATGW database"
  }

  depends_on = [aws_eip.prod]
}

resource "aws_nat_gateway" "database-cache" {
  allocation_id = aws_eip.prod[1].id
  subnet_id     = aws_subnet.prod-private-subnet4-1a.id
  tags = {
    Name = "NATGW Cache"
  }

  depends_on = [aws_eip.prod]
}