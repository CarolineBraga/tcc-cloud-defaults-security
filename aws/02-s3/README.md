# Análise de Configurações Padrão - Amazon S3

Esta seção contém o código Terraform para provisionar um bucket Amazon S3 com o mínimo de configurações, para analisar os padrões de segurança da AWS.

## Foco da Análise

- **Acesso Público:** O bloqueio de acesso público (`Block Public Access`) é ativado por padrão?
- **Criptografia:** A criptografia em repouso (`Server-Side Encryption`) é habilitada por padrão? Qual o tipo?
- **Versionamento:** O versionamento de objetos é ativado para prevenir exclusões acidentais?
- **Logging:** O logging de acesso ao bucket é configurado por padrão?

---

**Documentação oficial do recurso Terraform:**
- [aws_s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
