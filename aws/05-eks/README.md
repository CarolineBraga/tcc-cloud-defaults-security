# Análise de Configurações Padrão - Amazon EKS

Esta seção provisiona um cluster Amazon EKS para analisar as configurações padrão. A criação de um cluster EKS é mais complexa que a dos outros serviços, pois exige recursos pré-existentes como Roles do IAM e uma VPC com sub-redes.

O código aqui foca no `aws_eks_cluster` e `aws_eks_node_group`, assumindo que os pré-requisitos foram criados separadamente.

## Foco da Análise

- **Acesso ao Endpoint:** O endpoint do cluster é público ou privado por padrão?
- **Logging:** Os logs do control plane (`api`, `audit`, etc.) são ativados por padrão?
- **Criptografia de Segredos:** A criptografia de segredos do Kubernetes usando KMS é habilitada por padrão?
- **Rede:** Quais são as configurações de rede padrão para o node group? Ele recebe IPs públicos?

---

**Documentação oficial do recurso Terraform:**
- [aws_eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster)
- [aws_eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group)
