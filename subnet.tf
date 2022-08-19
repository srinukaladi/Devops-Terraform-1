resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "ap-south-1a"

  tags = {
    Name  = "${var.Public_Subnet-1_name}"
    Owner = "Lakshman"

  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "ap-south-1b"

  tags = {
    Name  = "${var.Public_Subnet-2_name}"
    Owner = "Lakshman"
  }
}

resource "aws_subnet" "subnet3-public" {
  vpc_id            = aws_vpc.testvpc01.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "ap-south-1c"

  tags = {
    Name  = "${var.Public_Subnet-3_name}"
    Owner = "Lakshman"
  }
}
