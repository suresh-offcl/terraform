resource "aws_instance" "Terraform" {
  count         =length(var.instacnes_names) 
  ami           = "ami-09c813fb71547fc4f"  # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_terraform_ssh.id]  # Attach security group

  tags = merge(
        var.common_tags,
        {
            Name = var.instacnes_names[count.index]
        }

  )
}


resource "aws_security_group" "allow_terraform_ssh" {
  name        = "allow ssh"
  description = "Allow TLS inbound traffic"


  ingress {
    description = "TLS from VPC"
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.ingress_cidr
  }

  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.egress_cidr
  }

  tags = merge( var.common_tags,
    {
        Name = "allow-sshh"
    }
   )
}

