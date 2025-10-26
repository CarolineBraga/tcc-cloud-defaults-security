# Análise de Configurações Padrão - Azure Virtual Machine

Este diretório contém o código Terraform para provisionar uma VM no Azure com configurações mínimas, visando analisar os padrões de segurança aplicados pelo provedor.

## Estrutura dos Arquivos
- `main.tf`: Define os recursos necessários para criar uma VM Windows.
- `variables.tf`: Declara as variáveis obrigatórias.
- `outputs.tf`: Exporta o ID e IP da VM.
- `provider.tf`: Configura o provedor Azure.
- `terraform.tfvars`: Valores das variáveis obrigatórias.

## Foco da Análise
- **Rede:** A VM recebe IP público por padrão? Quais portas estão abertas?
- **Disco:** O disco é criptografado por padrão?
- **Usuário/Autenticação:** O usuário administrador tem permissões mínimas?
- **Monitoramento:** Algum monitoramento/logging é ativado automaticamente?

---

**Documentação oficial do recurso Terraform:**
- [azurerm_windows_virtual_machine](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine)
