# Create public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cb
  availability_zone = var.availability_zone

  tags = {
    Name = var.public_subnet_name
  }
}

# Create private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cb
  availability_zone = var.availability_zone

  tags = {
    Name = var.private_subnet_name
  }
}