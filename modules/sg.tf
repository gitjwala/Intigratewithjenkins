resource "aws_security_group" "demo_sg" {
  name        = "sample_sg"
  description = "Allow TLS inbound traffic"
  dynamic "ingress" {
    for_each = var.sg_in_port
    content {
      description = "TLS from VPC"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

 dynamic "egress" {
   for_each = var.sg_eg_port
   content {
    from_port        = egress.value
    to_port          = egress.value
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 }
}
