resource "aws_instance" "server" {
  ami = "ami-0de53d8956e8dcf80"  #Amazon Linux 2 AMI
  instance_type = "t2.micro"
  count = "${lookup(var.stageInstanceCount, var.stage)}"
  tags = {
    name = "server ${count.index}"
  }
}