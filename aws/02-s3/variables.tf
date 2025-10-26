variable "aws_region" {
  description = "Região da AWS para provisionar os recursos."
  type        = string
}

variable "bucket_name" {
  description = "Nome do bucket S3. Deve ser globalmente único."
  type        = string
}
