provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0ad21ae1d0696ad58"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id="subnet-00d37eec797498ae4"
    key_name="mumbai"
}


