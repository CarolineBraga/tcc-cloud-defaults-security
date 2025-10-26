output "container_id" {
  description = "ID do container Blob criado."
  value       = azurerm_storage_container.default.id
}

output "storage_account_id" {
  description = "ID do Storage Account."
  value       = azurerm_storage_account.default.id
}
