# Análise de Configurações Padrão - Azure IAM (Managed Identity)

Este diretório contém o código Terraform para provisionar uma identidade gerenciada (User Assigned Managed Identity) no Azure com configurações mínimas, visando analisar os padrões de segurança aplicados pelo provedor.

## Estrutura dos Arquivos
- `main.tf`: Define o recurso de identidade gerenciada.
- `variables.tf`: Declara as variáveis obrigatórias.
- `outputs.tf`: Exporta o ID da identidade criada.
- `provider.tf`: Configura o provedor Azure.
- `terraform.tfvars`: Valores das variáveis obrigatórias.

## Foco da Análise
- **Permissões Iniciais:** A identidade tem permissões por padrão?
- **Limites de Permissão:** É possível criar identidades sem limites?
- **Credenciais:** Como as credenciais são gerenciadas por padrão?

---

**Documentação oficial do recurso Terraform:**
- [azurerm_user_assigned_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity)
