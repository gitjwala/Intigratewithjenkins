variable "instance_type" {
  default = "t2.nano"   
}

variable "iam" {
  default = "ami-089c26792dcb1fbd4"   
}

variable "sg_in_port" {
  default = "80"
}

variable "sg_eg_port" {
  default = "443"
}
