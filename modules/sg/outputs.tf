output "cloudnorth_sg_jenkins_id" {
  description = "Jenkins Security Group ID"
  value       = aws_security_group.cloudnorth-sg-jenkins.id
}

output "frontend_sg_id" {
  description = "Frontend Security Group ID"
  value       = aws_security_group.frontend_sg.id
}

output "backend_sg_id" {
  description = "Backend Security Group ID"
  value       = aws_security_group.backend_sg.id
}

output "db_sg_id" {
  description = "Security Group ID for RDS"
  value       = aws_security_group.backend_sg.id
}

output "eks_sg_id" {
  description = "EKS Security Group ID"
  value       = aws_security_group.eks_sg.id
}

output "alb_sg_id" {
  description = "ALB Security Group ID"
  value       = aws_security_group.alb_sg.id
}

output "jenkins_sg_id" {
  description = "Security Group ID for Jenkins"
  value       = aws_security_group.cloudnorth-sg-jenkins.id
}