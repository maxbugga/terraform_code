
# # creating privte subnets
resource "aws_subnet" "pri_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cidr, 8, count.index + local.az_count)
  count      = local.az_count

  tags = {
    Name        = "Private-subnet-${count.index + 1}-${local.ws}"
    Costcenter  = "UNISYS-6754"
    Environment = local.ws
    account_id  = local.az_count
  }
}



  
# // All Private subnets association

resource "aws_route_table_association" "prisub_asso" {
  count          = local.az_count
  subnet_id      = aws_subnet.pri_sub.*.id[count.index]
  route_table_id = aws_route_table.pri_route.id
}