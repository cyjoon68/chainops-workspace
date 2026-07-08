variable "aws_region" {
  type    = string
  default = "ap-northeast-2"
}

variable "eks_cluster_name" {
  type    = string
  default = "chainops-prod"
}

variable "eks_cluster_role_arn" {
  type        = string
  description = "IAM role ARN for the EKS control plane."
}

variable "eks_node_role_arn" {
  type        = string
  description = "IAM role ARN for managed node groups."
}

variable "eks_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for EKS."
}

provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "chainops" {
  name     = var.eks_cluster_name
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids = var.eks_subnet_ids
  }
}

resource "aws_eks_node_group" "chainops_api" {
  cluster_name    = aws_eks_cluster.chainops.name
  node_group_name = "chainops-api"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids      = var.eks_subnet_ids

  scaling_config {
    desired_size = 2
    max_size     = 4
    min_size     = 1
  }
}
