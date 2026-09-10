output "vpc_id" {
  description = "The ID of the provisioned VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet housing demo nodes"
  value       = aws_subnet.public.id
}

output "instance_public_ips" {
  description = "Public IP addresses for live SSH and Web access"
  value       = aws_instance.demo_nodes[*].public_ip
}

output "instance_ids" {
  description = "AWS EC2 Instance IDs for management and tracking"
  value       = aws_instance.demo_nodes[*].id
}