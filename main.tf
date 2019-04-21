
provider = "aws" { 
  region = "eu-west-2"
}

resources "aws_instances" "anis_dev_02" {
  ami = "ami-7c1bfd1b"
  instance_type = "t2.micro"
  }
}

 
