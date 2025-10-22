variable "aws_region" {
  description = "Região da AWS para provisionar os recursos."
  type        = string
}

variable "db_identifier" {
  description = "Identificador da instância de banco de dados RDS."
  type        = string
}

variable "db_allocated_storage" {
  description = "Armazenamento alocado para o banco de dados (em GB)."
  type        = number
}

variable "db_engine" {
  description = "Motor do banco de dados."
  type        = string
}

variable "db_instance_class" {
  description = "Classe da instância do banco de dados."
  type        = string
}

variable "db_username" {
  description = "Nome de usuário para o banco de dados."
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Senha para o banco de dados."
  type        = string
  sensitive   = true
}
