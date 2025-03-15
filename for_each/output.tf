output "ami_ids" {
  value       = data.aws_ami.datasourcess.id 

}

output "public_ips" {
  value = { for k, instance in aws_instance.terraform_expense : k => instance.public_ip }
}

output "private_ips" {
  value = { for k, instance in aws_instance.terraform_expense : k => instance.private_ip }
}

output "instances_type" {
  value = { for k, instance in aws_instance.terraform_expense : k => instance.instance_type }
}

