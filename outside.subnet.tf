data "aws_vpc" "Lakshman" {
  id = "vpc-0fc109d2a1f2c0c40"
}


resource "aws_subnet" "subnet4-public" {
  vpc_id            = data.aws_vpc.Lakshman.id
  cidr_block        = "10.95.5.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Lakshman-subnet4-public"

  }
}

data "aws_route_table" "Lakshman-rt" {
  route_table_id = "rtb-00233f45f9481ca47"
  vpc_id         = data.aws_vpc.Lakshman.id

}

resource "aws_route_table_association" "Lakshman_subnet4-public" {
  subnet_id      = aws_subnet.subnet4-public.id
  route_table_id = data.aws_route_table.Lakshman-rt.id
}


