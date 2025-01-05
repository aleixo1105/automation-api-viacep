# Projeto de Automação de API com Ruby, RSpec, Cucumber e HTTParty

Este projeto realiza testes automatizados de uma API usando Ruby, RSpec, Cucumber e HTTParty. O objetivo é testar a API do ViaCEP, validando os dados de endereço e outros campos ao fornecer um CEP.

## Tecnologias Utilizadas

- **Ruby**: Linguagem principal do projeto.
- **RSpec**: Framework para testes automatizados.
- **Cucumber**: Ferramenta para testes baseados em comportamento (BDD).
- **HTTParty**: Biblioteca para realizar requisições HTTP.
- **JSON**: Para manipulação da resposta da API.

## Pré-requisitos

Antes de rodar o projeto, é necessário ter as seguintes ferramentas instaladas:

1. **Ruby**: O Ruby deve estar instalado na sua máquina. Você pode verificar a instalação com:

   ruby -v

Se não tiver o Ruby instalado, baixe e instale a versão mais recente do site oficial do Ruby.

2. **Bundler**: Para gerenciar as dependências do Ruby, instale o Bundler com o comando:

    gem install bundler

3. **Instalação das dependências**: Após instalar o Ruby e o Bundler, você deve instalar as dependências do projeto. No diretório do projeto, execute:

    bundle install


# Estrutura do Projeto

A estrutura do projeto é organizada da seguinte maneira:

.
├── features
│   ├── api.feature               # Arquivo de feature Cucumber com os cenários de teste
│   └── step_definitions
│   │   └── api_steps.rb          # Passos para os testes da API
│   └── support
│       └── env.rb                # Arquivo de configuração global (variáveis)
├── lib
│   └── client.rb   
├── spec
│   └── api_spec.rb               # Testes adicionais com RSpec
├── Gemfile                       # Arquivo que define as dependências do projeto
└── README.md                     # Documentação do projeto


# Executando os Testes

    Enviar o comando "Cucumber" na raiz do projeto


Feature: VIACEP

  Scenario: Fetch data for a valid CEP
    Given I make a GET request to "01001000"
    Then the logradouro should be "Praça da Sé"
    Then the DDD should be "11"
