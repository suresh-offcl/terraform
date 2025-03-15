resource "aws_route53_record" "www" {
  
  count = length(var.instances_names)
  zone_id = local.zone_id
  name    = "${var.instances_names[count.index]}" == "frontend" ? "${local.domain_name}" :"${var.instances_names[count.index]}.${local.domain_name}"
  type    = "A"
  ttl     = 1
  records =   "${var.instances_names[count.index]}" == "frontend" ? [aws_instance.terraform_expense[count.index].public_ip] : [aws_instance.terraform_expense[count.index].private_ip] 

  allow_overwrite = true
}

