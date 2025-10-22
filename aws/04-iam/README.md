# Análise de Configurações Padrão - AWS IAM

Esta seção cria um usuário no AWS IAM sem nenhuma permissão associada, para analisar o que é permitido ou negado por padrão.

## Foco da Análise

- **Permissões Iniciais:** Um usuário recém-criado tem alguma permissão por padrão (negação implícita)?
- **Limites de Permissão (Permissions Boundary):** É possível criar um usuário sem um limite de permissão?
- **Credenciais:** Como as credenciais de acesso (console, chaves de acesso) são gerenciadas por padrão?
