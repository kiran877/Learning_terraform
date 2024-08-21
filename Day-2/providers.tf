//configuring in the root module

provider "aws" {
    region="us-east-1"  
}

resource "aws_instance" "demo" {
    ami = ""
    instance_type = ""
    subnet_id = ""
  
}


// Configuring in the child module

module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.us-west-2
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  depends_on = [module.aws_vpc]
}


//In the required_providers block

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.79"
    }
  }
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}