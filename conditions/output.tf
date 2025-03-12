output "public_ip" {
    value       = aws_instance.terraform.public_ip
    sensitive   = false
    description = "The public IP of the instance"
    


}