variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "frontend_subnet_cidr" {
  description = "CIDR block for the frontend subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "backend_subnet_cidr" {
  description = "CIDR block for the backend subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "frontend_az" {
  description = "Availability zone for frontend subnet"
  type        = string
  default     = "us-east-1a"
}

variable "backend_az" {
  description = "Availability zone for backend subnet"
  type        = string
  default     = "us-east-1b"
}