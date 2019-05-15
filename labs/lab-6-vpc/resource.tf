resource "aws_instance" "myAWS" {
  ami = "ami-0de53d8956e8dcf80"  #Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id = "${module.vpc.public_subnets[0]}"
}