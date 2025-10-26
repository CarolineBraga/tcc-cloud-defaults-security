variable "resource_group_name" {
  description = "Nome do Resource Group."
  type        = string
}

variable "location" {
  description = "Região do Azure."
  type        = string
}

variable "vm_name" {
  description = "Nome da máquina virtual."
  type        = string
}

variable "vm_size" {
  description = "Tamanho da VM."
  type        = string
}

variable "admin_username" {
  description = "Usuário administrador da VM."
  type        = string
}

variable "admin_password" {
  description = "Senha do administrador da VM."
  type        = string
  sensitive   = true
}

variable "vnet_name" {
  description = "Nome da Virtual Network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space da VNet."
  type        = string
}

variable "subnet_name" {
  description = "Nome da Subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix da Subnet."
  type        = string
}

variable "nic_name" {
  description = "Nome da Network Interface."
  type        = string
}

variable "nic_ip_config_name" {
  description = "Nome da configuração de IP da NIC."
  type        = string
}

variable "nic_ip_allocation" {
  description = "Tipo de alocação de IP da NIC."
  type        = string
}

variable "os_disk_caching" {
  description = "Tipo de caching do disco OS."
  type        = string
}

variable "os_disk_storage_type" {
  description = "Tipo de armazenamento do disco OS."
  type        = string
}

variable "image_publisher" {
  description = "Publisher da imagem da VM."
  type        = string
}

variable "image_offer" {
  description = "Offer da imagem da VM."
  type        = string
}

variable "image_sku" {
  description = "SKU da imagem da VM."
  type        = string
}

variable "image_version" {
  description = "Versão da imagem da VM."
  type        = string
}
