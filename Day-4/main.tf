provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "kiran" {
  ami = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"
  subnet_id = "subnet-00d37eec797498ae4"
  key_name = "mumbai"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "kiran-aws-s3-bucket"
  
}

resource "aws_dynamodb_table" "terrafor-lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}