resource "aws_instance" "pro_ec2" {
  ami           = "ami-02b8269d5e85954ef" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.pro_subnet.id
  vpc_security_group_ids = [aws_security_group.pro_sg.id]
  key_name      = "Lob" 
  user_data = file("apache.sh")


  tags = {
    Name = "Demo-EC2"
  }

}