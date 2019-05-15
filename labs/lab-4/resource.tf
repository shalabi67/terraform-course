resource "aws_instance" "web_server" {
  instance_type = "t2.micro"
  ami = "ami-0de53d8956e8dcf80"
  key_name = "${aws_key_pair.lab4Key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web_server_sec_group.id}"]



  #add appache.sh page
  provisioner "file" {
    source = "apache.sh"
    destination = "/tmp/apache.sh"
  }

  #install appache
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/apache.sh",
      "/tmp/apache.sh"
    ]
    /*
    inline = [
      "sudo yum install -y httpd",
      "sudo service httpd start",
      "sudo groupadd www",
      "sudo usermod -a -G www ec2-user",
      "sudo usermod -a -G www apache",
      "sudo chown -R apache:www /var/www",
      "sudo chmod 770 -R /var/www"
    ]
    */
  }

  #add index.html page
  provisioner "file" {
    source = "index.html"
    destination = "/var/www/html/index.html"
  }

  #provide connectionfro provisioners
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = "${file("./lab4")}"
  }
}