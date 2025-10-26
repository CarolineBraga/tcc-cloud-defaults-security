variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região do Azure."
  type        = string
}

variable "aks_cluster_name" {
  description = "Nome do cluster AKS."
  type        = string
}

variable "dns_prefix" {
  description = "Prefixo DNS para o cluster AKS."
  type        = string
}

variable "node_pool_name" {
  description = "Nome do node pool."
  type        = string
}

variable "identity_type" {
  description = "Tipo de identidade do AKS (ex: SystemAssigned, UserAssigned)."
  type        = string
}
