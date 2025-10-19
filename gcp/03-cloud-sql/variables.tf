variable "project_id" {
  description = "O ID do projeto GCP."
  type        = string
}

variable "region" {
  description = "A região onde a instância do Cloud SQL será criada."
  type        = string
}

variable "db_instance_name" {
  description = "O nome da instância do Cloud SQL."
  type        = string
}

variable "database_version" {
  description = "A versão do banco de dados (ex: POSTGRES_13)."
  type        = string
}

variable "db_tier" {
  description = "O tier (tipo de máquina) da instância."
  type        = string
}
