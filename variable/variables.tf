variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "THIS IS THE AMI ID OF DEVOPS-PRATICE FOR RHEL-9 "

}

variable "instance_type" {
    type = string
    default = "t3.micro"
    
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name"  {
    type = string
    default = "allow-sshh"
}

variable "from_port" {
    type = number
    default =22
}

variable "to_port" {
    type = number
    default =22
}
variable "protocol"{
    default = "tcp"
}

variable "ingress_cidr" {

    type = list(string)
    default = ["0.0.0.0/0"]
}