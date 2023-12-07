variable "instance_type" {
type = string
}
variable "ami" {
type = string
}
variable "sg_in_port" {
sg_in_port = "80"
}
variable "sg_eg_port" {
sg_eg_port = "443"
}
