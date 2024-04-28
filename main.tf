provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  count         = 2
  ami           = "ami-09b90e09742640522"
  instance_type = "t2.micro"
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.private_subnet_ids
}
