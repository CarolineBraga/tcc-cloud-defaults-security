# Análise de Configurações Padrão - Amazon RDS

Esta seção provisiona uma instância de banco de dados Amazon RDS (PostgreSQL) para analisar as configurações padrão de segurança.

## Foco da Análise

- **Acessibilidade Pública:** A instância é acessível publicamente (`publicly_accessible`) por padrão?
- **Criptografia em Repouso:** O armazenamento (`storage_encrypted`) é criptografado por padrão?
- **Backups Automáticos:** Backups automáticos (`backup_retention_period`) são habilitados?
- **Autenticação IAM:** A autenticação via IAM (`iam_database_authentication_enabled`) é ativada?
- **Exclusão:** A proteção contra exclusão (`deletion_protection`) vem habilitada?
- **Atualizações de Versão:** Atualizações automáticas de versões menores (`auto_minor_version_upgrade`) são ativadas?

---

**Documentação oficial do recurso Terraform:**
- [aws_db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance)
