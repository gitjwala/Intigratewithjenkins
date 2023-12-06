resource "aws_security_group" "mysg" {
  name        = "mysg"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "HTTPS inbount popt"
    from_port        = var.sg_in_port
    to_port          = var.sg_in_port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "HTTP outbound Port"
    from_port        = var.sg_eg_port
    to_port          = var.sg_eg_port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
