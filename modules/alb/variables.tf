variable "vpc_id" {
  description = "VPC ID for ALB"
  type        = string
}

variable "alb_subnet_ids" {
  description = "List of subnet IDs for ALB"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security Group ID for ALB"
  type        = string
}