resource "aws_instance" "terraform_expense" {
  for_each = var.instances
  
  ami           = data.aws_ami.datasourcess.id # Amazon Linux 2 AMI (change based on region)
  instance_type = each.value
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = merge(
    var.common_tags,
    {
     Name =  each.key
    }
  )
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.ingress_cidr_block  # Open to all (not recommended for production)
  }

 
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.egress_cidr_block
  }

  tags = merge(

      var.common_tags,
      {
        Name = "allow_sshh"
      }
  )

}

