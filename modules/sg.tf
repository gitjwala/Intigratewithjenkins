resource "aws_security_group" "ec2_tls" {
  name        = "ec2_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "HTTPS inbount popt"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "HTTP outbound Port"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
