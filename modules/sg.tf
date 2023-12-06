resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
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
