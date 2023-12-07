variable "instance_type" {
type = string
}
variable "ami" {
type = string
}
variable "sg_in_port" {
default = "80"
}
variable "sg_eg_port" {
default = "443"
}
