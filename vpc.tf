resource "aws_vpc" "provpc" {
  cidr_block = "192.168.0.0/16"


  tags = {
    Name = "DemoVPC"
  }
}

output "vpcid" {
    value = aws_vpc.provpc.id
  
}