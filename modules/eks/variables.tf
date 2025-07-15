variable "role_arn" {}

variable "kubernetes_version" {}

variable "subnet_ids" {
  description = "Subnets for EKS worker nodes"
  type        = list(string)
}

variable "security_group_ids" {
  type = list(string)
}

variable "node_group_role_arn" {
  description = "IAM role ARN for EKS node group"
}