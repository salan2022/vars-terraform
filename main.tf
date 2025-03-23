provider "aws" {
region = var.aws_region
}

# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux_2" {
most_recent = true
owners = ["amazon"]

filter {
name = "name"
values = ["amzn2-ami-hvm-*-x86_64-gp2"]
}
}

# Create a VPC
resource "aws_vpc" "example" {
cidr_block = var.vpc_cidr_block
tags = var.tags
}

# Create a Subnet
resource "aws_subnet" "example" {
vpc_id = aws_vpc.example.id
cidr_block = var.subnet_cidr_block
tags = var.tags
}

# Create an EC2 Instance using the latest Amazon Linux 2 AMI
resource "aws_instance" "example" {
ami = data.aws_ami.amazon_linux_2.id
instance_type = var.instance_type
subnet_id = aws_subnet.example.id
tags = var.tags
}