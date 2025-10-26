variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região do Azure."
  type        = string
}

variable "storage_account_name" {
  description = "Nome do Storage Account."
  type        = string
}

variable "account_tier" {
  description = "Tipo de conta do Storage Account (ex: Standard, Premium)."
  type        = string
}

variable "account_replication_type" {
  description = "Tipo de replicação do Storage Account (ex: LRS, GRS, ZRS)."
  type        = string
}

variable "container_name" {
  description = "Nome do container Blob."
  type        = string
}
