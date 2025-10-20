variable "project_id" {
  description = "O ID do projeto GCP."
  type        = string
}

variable "region" {
  description = "A região onde os recursos serão criados."
  type        = string
}

variable "zone" {
  description = "A zona onde os recursos serão criados."
  type        = string
}

variable "instance_name" {
  description = "O nome da instância da VM."
  type        = string
}

variable "machine_type" {
  description = "O tipo de máquina para a instância da VM."
  type        = string
}

variable "instance_image" {
  description = "A imagem a ser usada para o disco de boot da instância."
  type        = string
}

variable "network_name" {
  description = "O nome da rede VPC a ser usada."
  type        = string
}
