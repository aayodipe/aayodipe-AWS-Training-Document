
data "aws_key"

resource "aws_instance" "webserver" {
  instance_type = "t2.micro"
  ami           = "ami-08c40ec9ead489470"
  key_name = data....
}
