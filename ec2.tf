provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "my_instance"{
    ami = "ami-089c26792dcb1fbd4"
    instance_type = var.instance_type

    tags = {
        Name = "my-first-ec2"
    }
}
