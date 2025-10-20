variable "project_id" {
  description = "O ID do projeto GCP."
  type        = string
}

variable "region" {
  description = "A região onde os recursos serão criados."
  type        = string
}

variable "bucket_name" {
  description = "O nome do bucket do Cloud Storage. Deve ser globalmente único."
  type        = string
}
