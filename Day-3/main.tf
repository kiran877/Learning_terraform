

provider "aws" {
    region = "ap-south-1"
  }

  module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = "ami-0ad21ae1d0696ad58"
    instance_type ="t2.micro"
    subnet_id = "subnet-00d37eec797498ae4"
    key_name="mumbai"

  }

