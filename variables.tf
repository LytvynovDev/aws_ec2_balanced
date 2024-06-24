variable "aws_access_key" {
  type      = string
  sensitive = false
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}

variable "aws_vpc_id" {
  type = string
}

variable "aws_key_name" {
  type = string
}

variable "ec2_instances" {
  type = list(object({
    name : string
    type : string
  }))
  default = [{
    name = "Server 1"
    type = "t3.micro"
    }, {
    name = "Server 2"
    type = "t3.micro"
  }]
}

variable "aws_ami" {
  type    = string
  default = "ami-0705384c0b33c194c"
}

variable "project_name" {
  type    = string
  default = "nextjs-ci-cd"
}
