output "identity_id" {
  description = "ID da identidade gerenciada criada."
  value       = azurerm_user_assigned_identity.default.id
}
