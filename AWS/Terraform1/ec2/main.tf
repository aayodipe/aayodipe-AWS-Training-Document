resource "aws_instance" "web-server" {
  ami                    = "ami-05fa00d4c63e32376"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_sg.id]
  disable_api_stop       = true
  user_data              = file("user_data.sh")
  tags = {
    Name = "Web-server-demo-1"
  }
}