variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região do Azure."
  type        = string
}

variable "server_name" {
  description = "Nome do servidor SQL."
  type        = string
}

variable "sql_version" {
  description = "Versão do SQL Server (ex: 12.0)."
  type        = string
}

variable "admin_username" {
  description = "Usuário administrador do SQL Server."
  type        = string
}

variable "admin_password" {
  description = "Senha do administrador do SQL Server."
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Nome do banco de dados."
  type        = string
}
