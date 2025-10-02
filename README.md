# TCC em DevSecOps: Análise de Vulnerabilidades em Configurações Padrão de Nuvem

Repositório da Prova de Conceito (PoC) para o Trabalho de Conclusão de Curso em Engenharia de Computação. O projeto foca na detecção de vulnerabilidades de segurança originadas por configurações padrão em provedores de nuvem (AWS, GCP, Azure) através de uma pipeline automatizada de análise estática de Infraestrutura como Código (IaC).

---

## 📖 Tabela de Conteúdos

- [TCC em DevSecOps: Análise de Vulnerabilidades em Configurações Padrão de Nuvem](#tcc-em-devsecops-análise-de-vulnerabilidades-em-configurações-padrão-de-nuvem)
  - [📖 Tabela de Conteúdos](#-tabela-de-conteúdos)
  - [🏛️ Sobre o Projeto](#️-sobre-o-projeto)
  - [🎯 Objetivos da PoC](#-objetivos-da-poc)
  - [🛠️ Tecnologias Utilizadas](#️-tecnologias-utilizadas)
  - [📂 Estrutura do Repositório](#-estrutura-do-repositório)
  - [🔄 Fluxo de Trabalho e Pipeline](#-fluxo-de-trabalho-e-pipeline)
    - [Fluxo de Desenvolvimento (Git)](#fluxo-de-desenvolvimento-git)
    - [Pipeline Automatizada](#pipeline-automatizada)
  - [📊 Resultados e Relatórios](#-resultados-e-relatórios)
    - [1. Integração com GitHub Code Scanning (SARIF)](#1-integração-com-github-code-scanning-sarif)
    - [2. Relatório Detalhado para Download (JSON)](#2-relatório-detalhado-para-download-json)
  - [🚀 Como Executar Localmente](#-como-executar-localmente)
  - [👩‍💻 Autora](#-autora)

---

## 🏛️ Sobre o Projeto

A má configuração (*misconfiguration*) é o principal vetor de risco em ambientes de nuvem. Frequentemente, a origem dessas falhas está nas configurações padrão dos serviços, que priorizam a facilidade de uso em detrimento da segurança. Este repositório contém a **Prova de Conceito (PoC)** que valida a pesquisa teórica do TCC, demonstrando como detectar essas falhas de forma automatizada antes do provisionamento da infraestrutura (*shift-left security*).

## 🎯 Objetivos da PoC

* **Codificar** cenários de risco que representem serviços de nuvem criados com suas configurações padrão inseguras.
* **Integrar** a ferramenta de análise estática de segurança (SAST) **Checkov** em um fluxo de trabalho automatizado.
* **Validar** que a ferramenta é capaz de detectar as vulnerabilidades teóricas mapeadas na pesquisa documental.
* **Demonstrar** uma abordagem prática de DevSecOps para mitigar riscos de configuração em pipelines de CI/CD.

## 🛠️ Tecnologias Utilizadas

**Infraestrutura como Código:**

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)

**Validação e Análise de Segurança:**

![Terraform Validation](https://img.shields.io/badge/Terraform_Validation-7B42BC?style=flat-square&logo=terraform&logoColor=white)
![Checkov](https://img.shields.io/badge/Checkov-00B5A6?style=flat-square&logo=checkov&logoColor=white)

**Automação e CI/CD:**

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2671E5?style=flat-square&logo=githubactions&logoColor=white)
![GitHub Code Scanning](https://img.shields.io/badge/Code_Scanning-2671E5?style=flat-square&logo=github&logoColor=white)

## 📂 Estrutura do Repositório

O projeto é organizado de forma modular por provedor de nuvem e serviço para facilitar a análise.

## 🔄 Fluxo de Trabalho e Pipeline

Todo o desenvolvimento segue um fluxo de trabalho baseado em Pull Requests para garantir a qualidade e segurança do código que é integrado à branch `main`.

### Fluxo de Desenvolvimento (Git)

1.  Crie um branch de curta duração a partir da `main` com o prefixo `ft/`. Exemplo: `git checkout -b ft/poc-gcp-compute`.
2.  Adicione ou modifique o código IaC para o seu cenário de teste.
3.  Faça o commit e o push do seu branch.
4.  Abra um **Pull Request** para a `main`. Este ato aciona a pipeline automatizada.

### Pipeline Automatizada

A nossa pipeline, definida em `.github/workflows/security_scan.yml`, opera em dois estágios:

* **Estágio 1: Validação de Qualidade (Job: `validate-terraform`)**
    * Este job é executado primeiro.
    * Usa `terraform fmt -check` para garantir que todo o código está formatado corretamente.
    * Usa `terraform validate` para verificar a sintaxe e a consistência lógica do código.
    * Se este estágio falhar, a pipeline para, economizando tempo.

* **Estágio 2: Análise de Segurança (Job: `checkov-scan`)**
    * Este job só é executado se o Estágio 1 for concluído com sucesso (`needs: validate-terraform`).
    * Ele utiliza a Action oficial do **Checkov** para escanear todo o código Terraform em busca de vulnerabilidades.

## 📊 Resultados e Relatórios

A pipeline gera dois formatos de relatório para diferentes finalidades:

### 1. Integração com GitHub Code Scanning (SARIF)
O Checkov gera um relatório no formato SARIF, que é enviado para a ferramenta de Análise de Código do GitHub.
* **Onde encontrar:** Vá para a aba **"Security" > "Code scanning alerts"** do repositório.
* **Vantagem:** Oferece uma interface rica e integrada para visualizar, triar e gerenciar as vulnerabilidades ao longo do tempo.

### 2. Relatório Detalhado para Download (JSON)
Um relatório completo em formato JSON também é gerado e disponibilizado para download.
* **Onde encontrar:** Na página de resumo da execução da Action, na seção **"Artifacts"**.
* **Vantagem:** O formato JSON é ideal para análise programática, importação para outras ferramentas (como planilhas, após conversão) ou para ser anexado como evidência detalhada no TCC.

## 🚀 Como Executar Localmente

Para rodar a análise de segurança na sua máquina local:

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/SEU-USUARIO/tcc-cloud-defaults-security.git](https://github.com/SEU-USUARIO/tcc-cloud-defaults-security.git)
    cd tcc-cloud-defaults-security
    ```

2.  **Execute a análise com Checkov:**
    ```bash
    # Instale o Checkov se ainda não o tiver: pip install checkov
    checkov -d .
    ```

## 👩‍💻 Autora

Feito por **Caroline Braga**

* **LinkedIn:** `https://www.linkedin.com/in/carolineobraga/`
* **GitHub:** `https://github.com/CarolineBraga`