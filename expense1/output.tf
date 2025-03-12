output "ami_ids" {
  value       = data.aws_ami.datasourcess.id 

}

output "public_ip" {

  value = aws_instance.terraform_expense[*].public_ip

}

output "private_ip" {

  value = aws_instance.terraform_expense[*].private_ip

}

output "instances_type" {

  value = aws_instance.terraform_expense[*].instance_type
}

