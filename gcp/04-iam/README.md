# Análise de Configurações Padrão - Google Cloud IAM

Este diretório contém o código Terraform para atribuir um papel do **Google Cloud IAM** a um usuário no nível do projeto. O objetivo é analisar as permissões concedidas por papéis padrão (primitivos e predefinidos).

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso `google_project_iam_member`, que vincula um usuário a um papel.
- **`variables.tf`**: Declara as variáveis utilizadas (ID do projeto, e-mail do membro, papel).
- **`outputs.tf`**: Exibe o ID da vinculação criada.
- **`provider.tf`**: Configura o provedor do Google Cloud.
- **`terraform.tfvars`**: Arquivo para inserir o e-mail do usuário e o papel a ser concedido. **É necessário editar este arquivo.**

## Foco da Análise

Esta seção foca nos seguintes pontos de segurança das configurações padrão do Google Cloud IAM:

- **Permissões Iniciais:** Um usuário ou membro recém-criado tem permissões por padrão?
- **Limites de Permissão:** É possível criar membros sem limites de permissão?
- **Credenciais:** Como as credenciais de acesso são gerenciadas por padrão?
