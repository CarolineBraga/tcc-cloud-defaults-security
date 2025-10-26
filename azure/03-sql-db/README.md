# Análise de Configurações Padrão - Azure SQL Database

Este diretório contém o código Terraform para provisionar um servidor SQL e um banco de dados no Azure com configurações mínimas, visando analisar os padrões de segurança aplicados pelo provedor.

## Estrutura dos Arquivos
- `main.tf`: Define os recursos necessários para criar o servidor SQL e o banco de dados.
- `variables.tf`: Declara as variáveis obrigatórias.
- `outputs.tf`: Exporta os IDs dos recursos criados.
- `provider.tf`: Configura o provedor Azure.
- `terraform.tfvars`: Valores das variáveis obrigatórias.

## Foco da Análise
- **Acessibilidade Pública:** O banco é acessível publicamente por padrão?
- **Criptografia:** O armazenamento é criptografado por padrão?
- **Backups Automáticos:** Backups automáticos são habilitados?
- **Proteção contra Exclusão:** Existe proteção contra exclusão acidental?

---

**Documentação oficial do recurso Terraform:**
- [azurerm_mssql_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server)
- [azurerm_mssql_database](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database)
