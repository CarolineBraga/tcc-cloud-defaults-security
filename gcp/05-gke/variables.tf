variable "project_id" {
  description = "O ID do projeto GCP."
  type        = string
}

variable "region" {
  description = "A região onde o cluster GKE será criado."
  type        = string
}

variable "cluster_name" {
  description = "O nome do cluster GKE."
  type        = string
}

variable "initial_node_count" {
  description = "O número inicial de nós para o default-pool do cluster GKE Standard."
  type        = number
}
