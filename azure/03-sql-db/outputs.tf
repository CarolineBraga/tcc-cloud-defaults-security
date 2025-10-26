output "sql_server_id" {
  description = "ID do servidor MSSQL criado."
  value       = azurerm_mssql_server.default.id
}

output "sql_database_id" {
  description = "ID do banco de dados MSSQL criado."
  value       = azurerm_mssql_database.default.id
}
