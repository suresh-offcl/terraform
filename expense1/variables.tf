variable "instacnes_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "instance_type" {
    type = string
    default = "t3.micro"

}

variable "common_tags" {

    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform =  "true"
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

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "egress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}