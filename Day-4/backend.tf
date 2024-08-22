terraform {
  backend "s3" {
    bucket         = "kiran-aws-s3-bucket" # change this
    key            = "kiran/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}