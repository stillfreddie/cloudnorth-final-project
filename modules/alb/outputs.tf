output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.cloudnorth_alb.dns_name
}

output "alb_target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.cloudnorth_tg.arn
}