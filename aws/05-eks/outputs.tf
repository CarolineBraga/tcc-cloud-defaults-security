output "cluster_name" {
  description = "O nome do cluster EKS."
  value       = aws_eks_cluster.default_cluster.name
}

output "cluster_endpoint" {
  description = "O endpoint do control plane do Kubernetes."
  value       = aws_eks_cluster.default_cluster.endpoint
}

output "node_group_name" {
  description = "O nome do node group do EKS."
  value       = aws_eks_node_group.default_node_group.node_group_name
}
