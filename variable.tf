variable "instance_type" {
description = "instance type"
type = string
}
variable "ami" {
description = "ID of EC2 instance"
type = string
}
variable "sg_in_port" {
description = "inbound value"
default = "80"
}
variable "sg_eg_port" {
description = "outbound value"
default = "443"
}
