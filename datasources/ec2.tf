resource "aws_instance" "expense" {
  count         = length(var.instances_names)
  ami           = data.aws_ami.datasourcess.id  # Amazon Linux 2 AMI (Example)
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_sshh.id]  # Attach security group
  
  tags = merge (
    var.common_tags,
    {
        Name = var.instances_names[count.index]
    }
  )
  
}

resource "aws_security_group" "allow_sshh" {
  name        = "allow_ssh"
  description = "Allow SSH and HTTP"

  ingress {
    description = "Allow SSH"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.ingress_cidr_block  # Change for better security
  }

  
  egress {
   description = "Allow HTTP"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.egress_cidr_block
  }

  tags = merge(
    var.common_tags,
    {
        Name = "allow_sshh"
    }

  )

}