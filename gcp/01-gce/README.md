# Análise de Configurações Padrão - Google Compute Engine

Este diretório contém o código Terraform para provisionar uma instância do **Google Compute Engine (GCE)** com configurações padrão. O objetivo é analisar as implicações de segurança dessas configurações, conforme descrito no TCC.

## Estrutura dos Arquivos

- **`main.tf`**: Define o recurso principal, `google_compute_instance`, que cria a máquina virtual. As configurações padrão em análise estão destacadas com comentários neste arquivo.
- **`variables.tf`**: Declara todas as variáveis utilizadas no projeto, como o ID do projeto, região, tipo de máquina, etc.
- **`outputs.tf`**: Define os dados que serão exibidos após a execução, como o nome e os endereços IP da instância.
- **`provider.tf`**: Configura o provedor do Google Cloud para o Terraform.
- **`terraform.tfvars`**: Arquivo onde estão inseridos os valores das variáveis.

## Foco da Análise

Esta seção foca nos seguintes pontos de segurança das configurações padrão do Google Compute Engine:

- **Rede e Firewall:** A instância recebe um IP público por padrão? Quais portas estão abertas?
- **Disco:** O disco raiz é criptografado por padrão? Qual o tipo de criptografia?
- **Acesso à Metadados:** O acesso ao serviço de metadados (IMDS) está protegido?
- **Permissões:** Quais permissões de serviço são atribuídas à VM por padrão?
- **Monitoramento e Logging:** O Stackdriver (Cloud Monitoring/Logging) é ativado automaticamente?
