resource "aws_security_group" "var-sg" {
  name        = "var-sg"
  description = "Variables SG"
  vpc_id      = aws_vpc.var-vpc.id

  dynamic "ingress" {
    for_each = var.var-ports-tcp
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.cidr_block_allow]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_block_allow]
  }
}