variable "aws_region" {
  description = "Região da AWS para provisionar os recursos."
  type        = string
}

variable "instance_name" {
  description = "Nome da instância EC2."
  type        = string
}

variable "ami_id" {
  description = "ID da Amazon Machine Image (AMI) para a instância EC2. Este campo é obrigatório."
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2."
  type        = string
}
