resource "aws_route_table" "pri_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw.id
  }

  tags = {
    Name = "Private-Router"
  }
}


# creating nat gateway
resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.my-eip.id
  subnet_id     = aws_subnet.pub_sub.*.id[0]

  tags = {
    Name = "my-ngw"
  }
}

# EIP allocation
resource "aws_eip" "my-eip" {
  #   instance = aws_instance.web.id
  vpc = true
}