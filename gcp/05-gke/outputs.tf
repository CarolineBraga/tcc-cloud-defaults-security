output "cluster_name" {
  description = "O nome do cluster GKE criado."
  value       = google_container_cluster.default.name
}

output "cluster_endpoint" {
  description = "O endpoint do servidor da API do Kubernetes."
  value       = google_container_cluster.default.endpoint
  sensitive   = true
}
