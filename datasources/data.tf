data "aws_ami" "datasourcess" {
  most_recent = true
  owners      = ["973714476881"]  # Amazon official AMIs

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter{
    name = "root-device-type"
    values = ["ebs"]
  }
  
  filter{
    name = "virtualization-type"
    values = ["hvm"]
  }

}
