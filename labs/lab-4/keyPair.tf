resource "aws_key_pair" "lab4Key" {
  key_name = "lab4"
  public_key = "${file("./lab4.pub")}"
}