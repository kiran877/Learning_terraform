//input variable
variable "example_var" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}

variable "ami" {
    description = "ami value"
    type = "string"
  
}

resource "aws_instance" "demo" {
  ami=var.ami
}


//output variable

output "public-ip" {
 value=aws_instance.demo.public_ip 
}