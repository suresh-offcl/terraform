output "public_ip" {
  
  value = aws_instance.expense[*].public_ip

}

output "ami_id" {

  value = data.aws_ami.datasourcess.id
}


output "private_ip" {
  
  value = aws_instance.expense[*].private_ip

}
 
output "expense" {

    value = aws_instance.expense

}

output "records_names" {
    value = aws_route53_record.expense[*].name
}