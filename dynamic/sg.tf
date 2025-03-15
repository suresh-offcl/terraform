resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
        from_port   = ingress.value.from_port
        to_port     = ingress.value.to_port
        protocol    = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks  # Open to all (not recommended for production)
    
    }
     }

 
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.egress_cidr_block
  }

  tags = {
    Name = "allow_sshh"
  }


}
