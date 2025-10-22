resource "aws_eks_cluster" "default_cluster" {
  name     = var.eks_cluster_name
  role_arn = var.eks_role_arn

  vpc_config {
    subnet_ids = var.eks_vpc_subnet_ids
  }

  depends_on = [
  ]
}

resource "aws_eks_node_group" "default_node_group" {
  cluster_name    = aws_eks_cluster.default_cluster.name
  node_group_name = "${var.eks_cluster_name}-nodes"
  node_role_arn   = var.eks_node_group_role_arn
  subnet_ids      = var.eks_vpc_subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  # Garante que o control plane do EKS esteja pronto antes de criar os nós
  depends_on = [
    aws_eks_cluster.default_cluster,
  ]
}
