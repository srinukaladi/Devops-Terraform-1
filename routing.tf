resource "aws_route_table" "terrafom-public" {
  vpc_id = "${aws_vpc.testvpc01.id}"

  route {
    cidr_block = "10.1.0.0/16"
    gateway_id = "${aws_internet_gateway.testvpc01.id}"
  }
   tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "terraform-publicsubnet-1" {
    subnet_id = "${aws_subnet.subnet1-public.id}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}

resource "aws_route_table_association" "terraform-publicsubnet-2" {
    subnet_id = "${aws_subnet.subnet2-public.id}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}

resource "aws_route_table_association" "terraform-publicsubnet-3" {
    subnet_id = "${aws_subnet.subnet2-public.id}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}