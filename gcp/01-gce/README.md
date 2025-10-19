# Análise de Configurações Padrão - Google Compute Engine

Este diretório contém o código Terraform para provisionar uma instância do **Google Compute Engine (GCE)** com configurações padrão. O objetivo é analisar as implicações de segurança dessas configurações, conforme descrito no TCC.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso principal, `google_compute_instance`, que cria a máquina virtual. As configurações padrão em análise estão destacadas com comentários neste arquivo.
- **`variables.tf`**: Declara todas as variáveis utilizadas no projeto, como o ID do projeto, região, tipo de máquina, etc.
- **`outputs.tf`**: Define os dados que serão exibidos após a execução, como o nome e os endereços IP da instância.
- **`provider.tf`**: Configura o provedor do Google Cloud para o Terraform.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis.

## Como Utilizar

1.  **Pré-requisitos**:
    *   [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) instalado.
    *   [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) instalado e autenticado (`gcloud auth application-default login`).

2.  **Execução**:
    *   Navegue até este diretório (`gcp/01-compute-engine`).
    *   Inicialize o Terraform:
        ```bash
        terraform init
        ```
    *   Planeje a execução para revisar as alterações:
        ```bash
        terraform plan
        ```
    *   Aplique as configurações para criar a infraestrutura:
        ```bash
        terraform apply
        ```

3.  **Limpeza**:
    *   Para destruir os recursos criados, execute:
        ```bash
        terraform destroy
        ```
