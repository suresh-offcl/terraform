variable "common_tags" {
  type        = map 
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = true
  }
  
}

variable "instance_type" {
  default="mysql"
}

variable "domain_name" {
  default = "khanishkcosmetics.store"
}

variable "zone_id" {
  default = "Z10192312YWL9AAQ8B02Q"
}

variable "instances" {
    type = map

    default = {
      mysql = "t3.small"
      frontend = "t3.micro"
      backend = "t3.micro"

    }

}

variable "from_port" {
      default = "0"
}

variable "to_port" {
    default = "0"
}

variable "protocol" {
  default = "tcp"
}

variable "ingress_cidr_block" {

    default = ["0.0.0.0/0"]

}

variable "egress_cidr_block" {

    default = ["0.0.0.0/0"]

}