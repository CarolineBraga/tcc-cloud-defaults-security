# Análise de Configurações Padrão - Google Cloud Storage

Este diretório contém o código Terraform para provisionar um bucket do **Google Cloud Storage** com configurações majoritariamente padrão. O objetivo é analisar as implicações de segurança dessas configurações, conforme descrito no TCC.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso principal, `google_storage_bucket`, que cria o bucket de armazenamento. As configurações padrão em análise (como controle de acesso, versionamento, etc.) são omitidas intencionalmente.
- **`variables.tf`**: Declara todas as variáveis utilizadas no projeto, como o ID do projeto, região e nome do bucket.
- **`outputs.tf`**: Define os dados que serão exibidos após a execução, como o nome e a URL do bucket.
- **`provider.tf`**: Configura o provedor do Google Cloud para o Terraform.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis. **Lembre-se de definir um `bucket_name` globalmente único neste arquivo.**

## Como Utilizar

1.  **Pré-requisitos**:
    *   [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) instalado.
    *   [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) instalado e autenticado (`gcloud auth application-default login`).

2.  **Configuração**:
    *   Certifique-se de que o arquivo `terraform.tfvars` contém o `project_id` correto e um `bucket_name` que seja globalmente único.

3.  **Execução**:
    *   Navegue até este diretório (`gcp/02-cloud-storage`).
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

4.  **Limpeza**:
    *   Para destruir os recursos criados, execute:
        ```bash
        terraform destroy
        ```
