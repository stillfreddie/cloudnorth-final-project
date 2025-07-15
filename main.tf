provider "aws" {
  region = var.aws_region
}

terraform {
  backend "remote" {
    organization = "cloudnorth-tf-org"
    workspaces {
      name = "cloudnorth-final-project"
    }
  }
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  key_name          = var.key_name

  frontend_subnet_id = module.vpc.frontend_subnet_id
  backend_subnet_id  = module.vpc.backend_subnet_id

  frontend_sg_id     = module.sg.frontend_sg_id
  backend_sg_id      = module.sg.backend_sg_id
  jenkins_sg_id     = module.sg.jenkins_sg_id

  instance_type      = var.instance_type
}

module "rds" {
  source = "./modules/rds"

  db_name       = var.db_name
  db_username   = var.db_username
  db_password   = var.db_password
  db_sg_id      = module.sg.db_sg_id
  db_subnet_ids = [module.vpc.frontend_subnet_id, module.vpc.backend_subnet_id]
}

module "s3" {
  source = "./modules/s3"
}

module "eks" {
  source             = "./modules/eks"

  role_arn           = var.eks_role_arn
  node_group_role_arn = var.node_group_role_arn   # <-- NEW

  kubernetes_version = var.k8s_version

  subnet_ids         = [module.vpc.frontend_subnet_id, module.vpc.backend_subnet_id]
  security_group_ids = [module.sg.eks_sg_id]
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "alb" {
  source = "./modules/alb"

  vpc_id         = module.vpc.vpc_id
  alb_subnet_ids = [module.vpc.frontend_subnet_id, module.vpc.backend_subnet_id]
  alb_sg_id      = module.sg.alb_sg_id  # Or create a dedicated ALB SG if you prefer
}