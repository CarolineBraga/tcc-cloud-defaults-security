# Análise de Configurações Padrão - Google Kubernetes Engine (GKE) - Standard

Este diretório contém o código Terraform para provisionar um cluster do **Google Kubernetes Engine (GKE)** no modo **Standard**. O objetivo é analisar as configurações de segurança que o GCP aplica por padrão, especialmente no `default-pool` que é criado automaticamente.

## Foco da Análise

- **Conta de Serviço dos Nós**: Por padrão, os nós usam a conta de serviço do Compute Engine, que possui permissões excessivas (`Editor`), representando um risco de segurança crítico.
- **Endpoint Público**: O cluster é criado com um endpoint acessível publicamente.
- **Políticas de Rede**: Desabilitadas por padrão, permitindo comunicação irrestrita entre todos os pods.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso `google_container_cluster` com `initial_node_count`, forçando a criação de um `default-pool`.
- **`variables.tf`**: Declara as variáveis utilizadas.
- **`outputs.tf`**: Exibe o nome e o endpoint do cluster.
- **`provider.tf`**: Configura o provedor do Google Cloud.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis.

## Como Utilizar

1.  **Pré-requisitos**:
    *   Terraform e Google Cloud SDK instalados e autenticados.

2.  **Execução**:
    *   Navegue até este diretório (`gcp/05-gke`).
    *   `terraform init`
    *   `terraform plan`
    *   `terraform apply`

3.  **Limpeza**:
    *   `terraform destroy`
