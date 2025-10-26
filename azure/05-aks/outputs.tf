output "aks_cluster_id" {
  description = "ID do cluster AKS criado."
  value       = azurerm_kubernetes_cluster.default.id
}
