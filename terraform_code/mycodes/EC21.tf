provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webserver" {
    ami           = "ami-0e449927258d45bc4" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    key_name = "Project1"

    tags = {
        Name = "WebServer"
    }
  
}