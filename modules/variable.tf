variable "instance_type" {
  default = "t2.nano"   
}

variable "sg_in_port" {
  type    = list(number)
  default = [8080, 8081, 8082]
}

variable "sg_eg_port" {
  type    = list(number)
  default = [80, 443, 8443]
}
