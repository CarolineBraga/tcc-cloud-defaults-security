variable "project_id" {
  description = "O ID do projeto GCP."
  type        = string
}

variable "member_email" {
  description = "O e-mail do membro a quem o papel será atribuído (ex: user:email@example.com)."
  type        = string
}

variable "iam_role" {
  description = "O papel IAM a ser atribuído (ex: roles/viewer)."
  type        = string
}
