output "instance_name" {
  description = "O nome da instância da VM criada."
  value       = google_compute_instance.default.name
}

output "instance_internal_ip" {
  description = "O endereço IP interno da instância."
  value       = google_compute_instance.default.network_interface[0].network_ip
}

output "instance_external_ip" {
  description = "O endereço IP externo da instância."
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}
