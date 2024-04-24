provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.private_subnet_ids
  instance_count = 2  # Adjust the number of instances as needed
}
