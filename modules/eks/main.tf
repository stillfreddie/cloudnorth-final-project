resource "aws_eks_cluster" "cloudnorth-eks-cluster" {
  name     = "cloudnorth-eks-cluster"
  role_arn = var.role_arn

  version = var.kubernetes_version

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  tags = {
    Name    = "cloudnorth-eks-cluster"
    Project = "CloudNorth"
  }
}

resource "aws_eks_node_group" "cloudnorth_node_group" {
  cluster_name    = aws_eks_cluster.cloudnorth-eks-cluster.name
  node_group_name = "cloudnorth-node-group"
  node_role_arn   = var.node_group_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 2   
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["t3.medium"]

  ami_type       = "BOTTLEROCKET_x86_64"

  tags = {
    Name    = "cloudnorth-node-group"
    Project = "CloudNorth"
  }
}