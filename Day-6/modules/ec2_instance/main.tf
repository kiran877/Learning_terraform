provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "workspace" {
  ami = var.ami
  instance_type = var.instance_type
}