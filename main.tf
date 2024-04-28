provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-09b90e09742640522"
  instance_type = "t2.micro"
}
