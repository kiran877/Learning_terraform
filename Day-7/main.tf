provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://3.108.64.52:8201"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "08537ef1-2a0d-be29-138c-ad13900347f6"
      secret_id = "482687d3-c62d-cd25-68bd-26922df2b2df"

    }
  }
}


data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-secret"
}


resource "aws_instance" "example" {
  ami = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"

  tags = {
    secret=data.vault_kv_secret_v2.example.data["username"]
  }
}