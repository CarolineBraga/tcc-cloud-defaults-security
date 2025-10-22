variable "aws_region" {
  description = "Região da AWS para provisionar os recursos."
  type        = string
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "Nome do cluster EKS."
  type        = string
  default     = "tcc-default-cluster"
}

variable "eks_role_arn" {
  description = "ARN da Role do IAM para o control plane do EKS. Este campo é obrigatório."
  type        = string
}

variable "eks_node_group_role_arn" {
  description = "ARN da Role do IAM para os nós do EKS. Este campo é obrigatório."
  type        = string
}

variable "eks_vpc_subnet_ids" {
  description = "Lista de IDs de sub-redes para o cluster e nós do EKS. Pelo menos duas são necessárias. Este campo é obrigatório."
  type        = list(string)
}
