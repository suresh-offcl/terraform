resource "aws_route53_record" "www" {
  
  count = length(var.instances_names)
  zone_id = var.zone_id
  name    = "${var.instances_names[count.index]}" == "frontend" ? "${var.domain_name}" :"${var.instances_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records =   "${var.instances_names[count.index]}" == "frontend" ? [aws_instance.terraform_expense[count.index].public_ip] : [aws_instance.terraform_expense[count.index].private_ip] 

  allow_overwrite = true
}
