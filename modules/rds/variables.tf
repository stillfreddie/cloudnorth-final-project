variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "cloudnorthdb"
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

variable "db_sg_id" {
  description = "Security Group ID for RDS instance"
  type        = string
}

variable "db_subnet_ids" {
  description = "List of subnet IDs for RDS subnet group"
  type        = list(string)
}