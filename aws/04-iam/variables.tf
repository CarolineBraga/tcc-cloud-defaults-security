variable "aws_region" {
  description = "Região da AWS para provisionar os recursos."
  type        = string
}

variable "iam_user_name" {
  description = "Nome do usuário IAM a ser criado."
  type        = string
}
