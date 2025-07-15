variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu AMI ID for EC2 instances"
  type        = string
  default     = "ami-053b0d53c279acc90" # Verified Ubuntu 22.04 LTS, us-east-1
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "db_username" {
  description = "Master username for RDS instance"
  type        = string
}

variable "db_password" {
  description = "Master password for RDS instance"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
  default     = "cloudnorthdb"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "cloudnorth-static-site-bucket"
}

variable "eks_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  type        = string
}

variable "node_group_role_arn" {
  description = "IAM Role ARN for EKS Node Group"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version for EKS Cluster"
  type        = string
  default     = "1.33"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}