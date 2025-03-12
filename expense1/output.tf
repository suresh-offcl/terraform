output "expense_info" {
    #1count = length(var.instacnes_names)
    value = aws_instance.Terraform[*].public_ip

}