output "vpc_id" {
description = "The ID of the VPC"
value = aws_vpc.example.id
}

output "subnet_id" {
description = "The ID of the subnet"
value = aws_subnet.example.id
}

output "instance_id" {
description = "The ID of the EC2 instance"
value = aws_instance.example.id
}

output "ami_id" {
description = "The AMI ID used for the EC2 instance"
value = data.aws_ami.amazon_linux_2.id
}
