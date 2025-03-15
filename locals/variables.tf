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

# variable "domain_name" {
#   default = "khanishkcosmetics.store"
# }

# variable "zone_id" {
#   default = "Z06545581RGF8GAQCIKZF"
# }

variable "instances_names" {
    type = list(string)

    default = ["mysql","backend","frontend"]

}
variable "environment" {
  type        = string
  default     = "prod"
}


# variable "from_port" {
#       default = "0"
# }

# variable "to_port" {
#     default = "0"
# }

# variable "protocol" {
#   default = "tcp"
# }

# variable "ingress_cidr_block" {

#     default = ["0.0.0.0/0"]

# }

# variable "egress_cidr_block" {

#     default = ["0.0.0.0/0"]

# }