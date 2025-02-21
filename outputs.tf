
output "load_balancer_dns" {
  description = "The DNS name of the Load Balancer"
  value       = aws_lb.lb.dns_name
}

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.group4.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = [aws_subnet.subnet1.id, aws_subnet.subnet2.id, aws_subnet.subnet3.id]
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.allow_tls.id
}

output "blue_instance_id" {
  description = "Instance ID of the Blue deployment"
  value       = aws_instance.web1.id
}

output "green_instance_id" {
  description = "Instance ID of the Green deployment"
  value       = aws_instance.web2.id
}

output "blue_instance_public_ip" {
  description = "Public IP of the Blue deployment instance"
  value       = aws_instance.web1.public_ip
}

output "green_instance_public_ip" {
  description = "Public IP of the Green deployment instance"
  value       = aws_instance.web2.public_ip
}
