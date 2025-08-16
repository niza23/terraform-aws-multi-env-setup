output "instance_ids" {
  value       = aws_instance.this[*].id
  description = "EC2 instance IDs"
}

output "public_ips" {
  value       = aws_instance.this[*].public_ip
  description = "Public IP addresses"
}
