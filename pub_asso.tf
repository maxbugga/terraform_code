resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "my-pub-route"
  }
}

# # Public subnets association to route table
resource "aws_route_table_association" "pub_subs_asso" {
  count          = local.az_count
  subnet_id      = aws_subnet.pub_sub.*.id[count.index]
  route_table_id = aws_route_table.pub_rt.id
}