# Análise de Configurações Padrão - Amazon EC2

Esta seção contém o código Terraform para provisionar uma instância Amazon EC2 com o mínimo de configurações explícitas, a fim de analisar as configurações padrão aplicadas pela AWS.

## Estrutura

- `main.tf`: Define o recurso `aws_instance`.
- `variables.tf`: Declara as variáveis usadas, como região, nome da instância e AMI.
- `outputs.tf`: Define as saídas, como o ID da instância e o IP público.
- `provider.tf`: Configura o provedor AWS.
- `terraform.tfvars`: Arquivo para fornecer valores para as variáveis, especialmente o `ami_id` que é obrigatório.

## Foco da Análise

A análise se concentrará em padrões de segurança, como:
- **Grupos de Segurança (Security Groups):** Qual é o comportamento padrão se nenhum grupo de segurança for associado?
- **Acesso à Metadados (IMDSv2):** A versão mais segura do serviço de metadados é exigida por padrão?
- **Criptografia de Volumes EBS:** O volume raiz (root) é criptografado por padrão?
- **Monitoramento Detalhado:** O monitoramento detalhado do CloudWatch é ativado?
- **IP Público:** Um endereço IP público é associado por padrão?
