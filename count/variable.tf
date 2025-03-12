variable "instances_names" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
}

variable "zone_id" {
    type = string
    default = "Z06545581RGF8GAQCIKZF"
}

variable "domain_name" {
    type = string
    default = "khanishkcosmetics.store"
}

variable "environment" {
    type = string
    default = "dev"

}

variable "common_tags" {
    type  = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "from_port" {
    type = string
    default = "0"

}

variable "to_port" {
    type = string
    default = "0"

}

variable "protocol" {
    type = string
    default = "tcp"

}

variable "ingress_cidr_block" {
    type = list(string)
    default = ["0.0.0.0/0"]

}

variable "egress_cidr_block" {
    type = list(string)
    default = ["0.0.0.0/0"]

}

