variable "aws_region" {
description = "The AWS region to deploy resources"
type = string
default = "us-west-2"
}

variable "instance_type" {
description = "EC2 instance type"
type = string
default = "t2.micro"
}

variable "vpc_cidr_block" {
description = "CIDR block for the VPC"
type = string
default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
description = "CIDR block for the subnet"
type = string
default = "10.0.1.0/24"
}

variable "tags" {
description = "Tags to apply to resources"
type = map(string)
default = {
Environment = "dev"
Project = "example-project"
Owner = "devops-team"
}
}
