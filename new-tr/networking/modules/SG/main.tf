resource "aws_security_group" "main" {
  
  description = "Allow all traffic"
  vpc_id      = var.vpc_id

tags = merge(
    var.tags,
    {
      Name = "${var.resource_name}-sg"
    }
  )

  dynamic "ingress" {

    for_each = var.ingress_ports

    content {

      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.allowed_cidr

    }

  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
