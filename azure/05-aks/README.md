# Análise de Configurações Padrão - Azure Kubernetes Service (AKS)

Este diretório contém o código Terraform para provisionar um cluster AKS no Azure com configurações mínimas, visando analisar os padrões de segurança aplicados pelo provedor.

## Estrutura dos Arquivos
- `main.tf`: Define o recurso do cluster AKS.
- `variables.tf`: Declara as variáveis obrigatórias.
- `outputs.tf`: Exporta o ID do cluster criado.
- `provider.tf`: Configura o provedor Azure.
- `terraform.tfvars`: Valores das variáveis obrigatórias.

## Foco da Análise
- **Acesso ao Endpoint:** O endpoint do cluster é público ou privado por padrão?
- **Logging:** Os logs do control plane são ativados por padrão?
- **Criptografia de Segredos:** A criptografia de segredos do Kubernetes usando Key Vault é habilitada?
- **Rede:** Quais são as configurações de rede padrão para o node pool? Ele recebe IPs públicos?

---

**Documentação oficial do recurso Terraform:**
- [azurerm_kubernetes_cluster](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster)
