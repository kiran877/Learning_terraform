provider "aws" {
    region = "ap-south-1"

}

import {
  to =  aws_instance.example
  id = "i-086468dbed9008e5d"
}
