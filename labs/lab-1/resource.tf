resource "aws_instance" "myAWS" {
  #ami = "ami-098bb5d92c8886ca1" #redhat
  #now let us change to anothr AMi
  ami = "ami-0de53d8956e8dcf80"  #Amazon Linux 2 AMI
  instance_type = "t2.micro"
}
