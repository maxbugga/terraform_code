# # # creating public subnets

resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cidr, 8, count.index)
  count      = local.az_count

  tags = {
    Name        = "Public-subnet-${count.index + 1}-${local.ws}"
    Costcenter  = "UNISYS-6754"
    Environment = local.ws
    account_id  = local.az_count

  }
}