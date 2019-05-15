resource "aws_instance" "web_server" {
  instance_type = "t2.micro"
  ami = "ami-0de53d8956e8dcf80"
}