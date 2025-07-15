output "frontend_subnet_id" {
  description = "ID of the frontend subnet"
  value       = aws_subnet.frontend_subnet.id
}

output "backend_subnet_id" {
  description = "ID of the backend subnet"
  value       = aws_subnet.backend_subnet.id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.cloudnorth-vpc.id
}