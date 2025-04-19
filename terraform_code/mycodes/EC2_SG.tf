provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webserver" {
    ami           = "ami-0e449927258d45bc4" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    key_name = "Project1"
    security_groups = ["SG1"]
   
    tags = {
        Name = "WebServer"
    }
  
}

resource "aws_security_group" "SG1" {
  name        = "SG1"
  description = "SSH Acess"
  

  ingress {
    description = "SSH Acess"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [0.0.0.0/0]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH-Access"
  }
}