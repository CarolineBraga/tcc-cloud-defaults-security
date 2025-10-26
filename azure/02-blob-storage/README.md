# Análise de Configurações Padrão - Azure Blob Storage

Este diretório contém o código Terraform para provisionar um Storage Account e um container Blob no Azure com configurações mínimas, visando analisar os padrões de segurança aplicados pelo provedor.

## Estrutura dos Arquivos
- `main.tf`: Define os recursos necessários para criar o Storage Account e o container Blob.
- `variables.tf`: Declara as variáveis obrigatórias.
- `outputs.tf`: Exporta os IDs dos recursos criados.
- `provider.tf`: Configura o provedor Azure.
- `terraform.tfvars`: Valores das variáveis obrigatórias.

## Foco da Análise
- **Acesso Público:** O container é privado por padrão?
- **Criptografia:** O armazenamento é criptografado por padrão?
- **Versionamento:** O versionamento de blobs está ativado?
- **Logging:** Algum monitoramento/logging é ativado automaticamente?

---

**Documentação oficial do recurso Terraform:**
- [azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)
- [azurerm_storage_container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container)
