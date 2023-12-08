# Comments in Terraform HCL starts with '#'

/* multi
line
comments in Terraform HCL 
*/

# Block ( provider block, resource block, variable block, output block etc)
resource "aws_instance" "demo" {
    ami = "your_ami_in_ec2_instance"
    instance_type = "t2.micr0"
    count = 3
    tags = {
      Name = "Welcome" #name of ec2 insatnce (in aws console, this name appears as ec2 instance)
    }
}

#Variables and outputs in Terraform
/* Local Variables

1. Local Variables are declared using the "locals" block
2. Local variables are accessible within the module/configuration where they are declared

*/

locals {
    ami = "your-ami"
    type = "t2.micro"
    tags = {
        Name = "my ec2 instance"
        Env = "Dev"
    }
}

/* Input variables

1. Input variables are declared using the "variable" block, but there are many other ways to define a variable
2. Input variables let users specify particular values when creating infrastructure

*/

#Define a variable
variable "environment" {
  type = string
  default = "development"
}

#create  a resource using the variable
resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-${var.environment}"
}

#--------------------------------------------------------------------------------------------------------------------------

resource "aws_instance" "hello" {
    ami = var.os
    instance_type = var.size
    count = var.count
    tags = {
      Name = var.name #name of ec2 insatnce (in the aws console, this name appears as ec2 instance)
    }
}


