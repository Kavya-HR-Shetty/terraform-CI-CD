resource "aws_route_table" "pro_rt" {
  vpc_id = aws_vpc.provpc.id

  # Default route for internet access
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Demo-route-table"
  }
}

# Associate Route Table with Subnet
resource "aws_route_table_association" "pro_assoc" {
  subnet_id      = aws_subnet.pro_subnet.id
  route_table_id = aws_route_table.pro_rt.id
}