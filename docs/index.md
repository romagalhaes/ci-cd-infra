# ci-cd Infra

APIGateway

## Visao Geral

Este repositorio contem a infraestrutura da aplicacao `ci-cd`.
Os recursos sao gerenciados com Terraform e executados via GitHub Actions.

## Estrutura

- `backend.tf`: configuracao do backend remoto do Terraform
- `main.tf`: chamada do modulo principal de infraestrutura
- `variables.tf`: variaveis base do projeto
- `.github/workflows/terraform.yml`: pipeline de plan, apply e destroy

## Operacao

- Pull requests para `main` executam `terraform plan`
- Push em `main` executa `terraform apply`
- A exclusao do servico dispara `terraform destroy` antes da remocao dos repositorios

## Seguranca

- A autenticacao com a AWS e feita via OIDC
- O workflow assume a role informada no template
- O estado remoto do Terraform fica armazenado no backend configurado em `backend.tf`

## Ownership

- Owner: `group:default/guests`
- Cloud provider: `aws`
- Region: `us-east-1`
