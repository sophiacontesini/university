# University Project

Este é um projeto de exemplo para uma universidade, criado usando PostgreSQL, gerenciado com DBeaver, e empacotado em contêineres Docker.

![modelagemUniversidade](https://github.com/sophiacontesini/university/assets/94463723/8bfdc39e-c0d5-4d9b-a4cb-04a214701b9c)

## Pré-requisitos

Certifique-se de ter instalado os seguintes componentes antes de iniciar:
- [Docker](https://docs.docker.com/get-docker/): para criar e gerenciar contêineres.
- [DBeaver](https://dbeaver.io/download/): para gerenciar o banco de dados PostgreSQL.


## Funcionalidades do Sistema

- Cadastrar alunos, professores, disciplinas e turmas.
- Matrícular os alunos em suas respectivas turmas e disciplinas.
- Registrar as notas de cada aluno.

## Instruções de Uso

### 1. Clonar o Repositório

Clone este repositório em seu ambiente local:
- git clone https://github.com/sophiacontesini/university.git
- cd university-project


### 2. Iniciar o Banco de Dados PostgreSQL

Use o Docker Compose para iniciar o banco de dados PostgreSQL:
- docker-compose up -d

### 3. Importar o Esquema do Banco de Dados

Abra o DBeaver e conecte-se ao banco de dados PostgreSQL
Importe o esquema do banco de dados a partir do arquivo SQL fornecido.

### 4. Executar Consultas e Visualizar Dados

Você pode agora executar consultas SQL e visualizar os dados das tabelas `Alunos`, `Professores`, `Turmas`, etc., usando o DBeaver.

## Estrutura do Projeto

- `university.sql`: Arquivo SQL com dados de exemplo para inserir nas tabelas.
- `README.md`: Este arquivo com instruções e informações sobre o projeto.

## Contribuição

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos.

## Licença

Este projeto é licenciado sob a [MIT License](LICENSE).



