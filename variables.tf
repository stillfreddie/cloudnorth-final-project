variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu AMI ID for EC2 instances"
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc" # Verified Ubuntu 22.04 LTS, us-east-1
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

variable "eks_node_group" {
  description = "Name of the EKS node group"
  type        = string
}

variable "eks_node_instance_type" {
  description = "Instance type for EKS nodes"
  type        = string
}

variable "backend_eip_allocation_id" {
  description = "Elastic IP allocation ID for the backend EC2 instance"
  type        = string
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
}

variable "frontend_eip_allocation_id" {
  description = "Elastic IP allocation ID for the frontend EC2 instance"
  type        = string
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired capacity for the Auto Scaling Group"
  type        = number
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "db_port" {
  description = "Port number for RDS database"
  type        = number
}

variable "frontend_instance_type" {
  description = "Instance type for frontend EC2"
  type        = string
}

variable "backend_instance_type" {
  description = "Instance type for backend EC2"
  type        = string
}

variable "frontend_subnet_cidr" {
  description = "CIDR block for frontend subnet"
  type        = string
}

variable "backend_subnet_cidr" {
  description = "CIDR block for backend subnet"
  type        = string
}
