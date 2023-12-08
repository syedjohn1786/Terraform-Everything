variable "os" {
  type = string
  default = "ami_in_ec2_instance"
  description = "ami id of ec2 instance"
}

variable "size" {
  type = string
  default = "t2.medium"
  description = "it is the instance type of the ec2 instance"
}

variable "count" {
  type = number
  default = 3
  description = "no of instances going to create"
}

variable "name" {
  type = string
  default = "HelloWorld"
}