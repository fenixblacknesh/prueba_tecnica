resource "aws_vpc" "myproject_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "myproject_subnet" {
  count      = 2
  vpc_id     = aws_vpc.myproject_vpc.id
  cidr_block = cidrsubnet(aws_vpc.myproject_vpc.cidr_block, 8, count.index)
}
