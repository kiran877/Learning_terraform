provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "ami-0ad21ae1d0696ad58"
    "stage"="ami-02b49a24cfb95941c"
    "prod"="ami-022ce6f32988af5fa"
  }
}

variable "instance_type" {
  description = "value"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stage"="t2.medium"
    "prod"="t2.large"
  }
}

module "aws_instance" {
  source = "D:/Terraform/Day-6/modules/ec2_instance"
  ami=lookup(var.ami,terraform.workspace,"error")
  instance_type=lookup(var.instance_type,terraform.workspace,"t2.micro")
}