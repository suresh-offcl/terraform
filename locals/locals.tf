locals {
  domain_name = "khanishkcosmetics.store"
  zone_id = "Z06545581RGF8GAQCIKZF"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  from_port = "0"
  to_port = "0"
  protocol = "tcp"
  ingress_cidr_block = ["0.0.0.0/0"]
  egress_cidr_block = ["0.0.0.0/0"]

}
