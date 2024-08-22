variable "ami" {
    description = " value for ami id whether it is linux or ubuntu ..."
    type = string
  
}
variable "instance_type" {
  description = "value for instance type t2 micro..."
  type = string
}
variable "subnet_id" {
  description = "value for subnet id "
  type = string
}
variable "key_name" {
  description = "value for subnet id "
  type = string
}