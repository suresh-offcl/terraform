data "aws_ami" "datasourcess" {
  most_recent = true
  owners = ["973714476881"]
  
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"] # Amazon Linux 2 AMI naming pattern
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

}
