output "db_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.cloudnorth_db_instance.endpoint
}