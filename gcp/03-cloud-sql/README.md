# Análise de Configurações Padrão - Google Cloud SQL

Este diretório contém o código Terraform para provisionar uma instância do **Google Cloud SQL** com configurações majoritariamente padrão. O objetivo é analisar as implicações de segurança dessas configurações, como a exposição de IP público, políticas de backup, etc.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso principal, `google_sql_database_instance`, que cria a instância do banco de dados.
- **`variables.tf`**: Declara todas as variáveis utilizadas no projeto.
- **`outputs.tf`**: Define os dados que serão exibidos após a execução.
- **`provider.tf`**: Configura o provedor do Google Cloud para o Terraform.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis.

## Como Utilizar

1.  **Pré-requisitos**:
    *   Terraform e Google Cloud SDK instalados e autenticados.

2.  **Execução**:
    *   Navegue até este diretório (`gcp/03-cloud-sql`).
    *   `terraform init`
    *   `terraform plan`
    *   `terraform apply`

3.  **Limpeza**:
    *   `terraform destroy`
