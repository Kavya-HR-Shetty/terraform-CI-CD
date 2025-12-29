resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.provpc.id

  tags = {
    Name = "Demo_IGW"
  }
}