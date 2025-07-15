output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "frontend_subnet_id" {
  description = "ID of the frontend subnet"
  value       = module.vpc.frontend_subnet_id
}

output "backend_subnet_id" {
  description = "ID of the backend subnet"
  value       = module.vpc.backend_subnet_id
}

output "frontend_sg_id" {
  description = "Security Group ID for frontend instances"
  value       = module.sg.frontend_sg_id
}

output "backend_sg_id" {
  description = "Security Group ID for backend instances"
  value       = module.sg.backend_sg_id
}

output "frontend_ec2_id" {
  description = "Instance ID for frontend EC2"
  value       = module.ec2.frontend_ec2_id
}

output "backend_ec2_id" {
  description = "Instance ID for backend EC2"
  value       = module.ec2.backend_ec2_id
}

output "db_endpoint" {
  description = "RDS database endpoint"
  value       = module.rds.db_endpoint
  sensitive   = true
}

output "bucket_name" {
  description = "S3 bucket name"
  value       = module.s3.bucket_name
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.eks_cluster_name
}

output "log_group_name" {
  description = "CloudWatch log group name"
  value       = module.monitoring.log_group_name
}

output "jenkins_sg_id" {
  description = "Security Group ID for Jenkins server"
  value       = module.sg.cloudnorth_sg_jenkins_id
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns_name
}