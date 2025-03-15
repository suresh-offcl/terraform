variable "ingress_rules" {
    default = [{
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 80
        to_port   = 80
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 8080
        to_port   = 8080
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    ]
}

variable "to_port" {
    default= "0"
}

variable "from_port" {
    default= "0"
}
variable "egress_cidr_block" {
    default= ["0.0.0.0/0"]
}