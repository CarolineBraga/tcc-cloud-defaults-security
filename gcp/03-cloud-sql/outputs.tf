output "instance_name" {
  description = "O nome da instância do Cloud SQL criada."
  value       = google_sql_database_instance.default.name
}

output "instance_ip_address" {
  description = "O endereço IP da instância."
  value       = google_sql_database_instance.default.public_ip_address
}
