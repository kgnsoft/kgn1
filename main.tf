
#provider = "aws" { 
#  region = "eu-west-2"
#}


resource "aws_instance" "anis" {
  ami 		= "ami-7c1bfd1b"
  instance_type	= "t2.micro"
  
  user_data =	<<-EOF
		#!/bin/bash
		echo "Hello, this is a firt instance" > index.html
		nohup busybox httpd -f -p 8080 & 
		EOF
  tags {
    Name = "anis_dev_02"
}
}

 
