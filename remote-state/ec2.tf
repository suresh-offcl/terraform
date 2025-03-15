resource "aws_instance" "terraform_expense" {
  count = length(var.instances_names)
  ami           = data.aws_ami.datasourcess.id # Amazon Linux 2 AMI (change based on region)
  instance_type = var.instances_names[count.index] == "mysql" ? "t3.small": "t3.micro"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = merge(
    var.common_tags,
    {
     Name =  var.instances_names[count.index]
    }
  )
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"

  ingress {
    from_port   = local.from_port
    to_port     = local.to_port
    protocol    = local.protocol
    cidr_blocks = local.ingress_cidr_block  # Open to all (not recommended for production)
  }

 
  egress {
    from_port   = local.from_port
    to_port     = local.to_port
    protocol    = "-1"
    cidr_blocks = local.egress_cidr_block
  }

  tags = merge(

      var.common_tags,
      {
        Name = "allow_sshh"
      }
  )

}

resource "aws_instance" "elastic_search" {
  count = length(var.instances_names)
  ami           = data.aws_ami.datasourcess.id # Amazon Linux 2 AMI (change based on region)
  instance_type = local.instance_type
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = merge(
    var.common_tags,
    {
     Name =  var.instances_names[count.index]
    }
  )
}