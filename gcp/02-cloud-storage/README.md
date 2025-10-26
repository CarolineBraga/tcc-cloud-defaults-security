# Análise de Configurações Padrão - Google Cloud Storage

Este diretório contém o código Terraform para provisionar um bucket do **Google Cloud Storage** com configurações majoritariamente padrão. O objetivo é analisar as implicações de segurança dessas configurações, conforme descrito no TCC.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso principal, `google_storage_bucket`, que cria o bucket de armazenamento. As configurações padrão em análise (como controle de acesso, versionamento, etc.) são omitidas intencionalmente.
- **`variables.tf`**: Declara todas as variáveis utilizadas no projeto, como o ID do projeto, região e nome do bucket.
- **`outputs.tf`**: Define os dados que serão exibidos após a execução, como o nome e a URL do bucket.
- **`provider.tf`**: Configura o provedor do Google Cloud para o Terraform.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis. **Lembre-se de definir um `bucket_name` globalmente único neste arquivo.**

## Foco da Análise

Esta seção foca nos seguintes pontos de segurança das configurações padrão do Google Cloud Storage:

- **Acesso Público:** O bucket é privado por padrão? O bloqueio de acesso público está ativado?
- **Criptografia:** O bucket utiliza criptografia em repouso por padrão? Qual o tipo?
- **Versionamento:** O versionamento de objetos está ativado?
- **Logging:** O registro de acessos ao bucket é habilitado automaticamente?

---

**Documentação oficial do recurso Terraform:**
- [google_storage_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)
