# Projeto Final: Banco de Dados Relacional 🏆

## Objetivo 🎯

Este repositório contém o projeto final da disciplina de Banco de Dados Relacional. O objetivo é aplicar os conceitos estudados, incluindo modelagem, normalização e manipulação de dados utilizando DDL, DML, DQL — com bonificação para comandos DCL e DTL.

## Integrantes do Grupo 🧍‍♂️🧍‍♂️🧍‍♂️🧍‍♂️

- Felipe Cutiur do Santos
- Jose Eduardo de Oliveira Junior
- Joacir Peçanha Moreira Filho
- Kelvim Lucas de Paula

## Tema Escolhido 

> Sistema Hospitalar ⚕️

O principal objetivo deste sistema é adiquirir um maior controle no processos hospitalares, como seus profissionais, pacientes, exames e medicamentos. Ajudando em manter um histórico detalhado do que foi feito, tomar as melhores decisões, apoio aos profissionais e diminuição erros.<br>
Esse projeto testará o conhecimento que os integrantes do grupo adiquiriram no primeiro semestre na matéria de **Banco de Dados**, colocando-os em prática neste projeto, deste a elaboração do **Diagrama de Entidade-Relacional (DER)** até a criação de _views_ no banco de dados.

## Modelagem de Dados 

### Entidades, Atributos e Relacionamentos

Descrição geral das entidades envolvidas e seus relacionamentos.

### Diagrama Entidade-Relacionamento (DER)

![DER]()

## Normalização

Normalização é o processo de organização de dados em um banco de dados. Isso inclui a criação de tabelas e o estabelecimento de relações entre essas tabelas de acordo com as regras projetadas para proteger os dados e tornar o banco de dados mais flexível, eliminando a redundância e a dependência inconsistente.

O banco de dados foi normalizado até a **Terceira Forma Normal (3NF)**.

### Primeira Forma Normal - 1FN
- Somente possui valores atômicos.
- Não há grupos de atributos repetidos (há apenas um dado por coluna nas linhas).
- Existe uma chave primária.
- Relação não possui atributos multivalorados ou relações aninhadas.

### Segunda Forma Normal - 2FN
- Está na 1FN.
- Não contém dependências parciais.

### Terceira Forma Normal - 3FN
- Está na 2FN.
- Não contém dependências transitiva (A relação não deve ter um atributo não-chave funcionalmente determinado por um outro atributo não-chave.

## Scripts SQL

Todos os scripts estão localizados na pasta `/sql`.

### DDL (Data Definition Language)

- Criação de tabelas
- Definição de chaves primárias e estrangeiras
- Restrições de integridade

> Caminho: `sql/ddl.sql`

### DML (Data Manipulation Language)

- Inserção de dados
- Atualização de registros
- Exclusão de registros

> Caminho: `sql/dml.sql`

### DQL (Data Query Language)

- Consultas para recuperar dados relevantes

> Caminho: `sql/dql.sql`

### DCL (Data Control Language)

> Caminho: `sql/dcl.sql`

- Uso de `GRANT` e `REVOKE` para controle de acesso

### DTL (Data Transaction Language)

> Caminho: `sql/dtl.sql`

- Uso de `BEGIN`, `COMMIT`, `ROLLBACK`, `SAVEPOINT` para garantir a integridade transacional


## Documentação (ABNT)

A documentação completa está disponível na pasta `/documentacao`, estruturada conforme as normas da ABNT, contendo:

- Introdução
- Modelagem conceitual
- Scripts comentados
- Conclusão e referências

> Caminho: `documentacao/projeto-final.pdf`


## Requisitos Técnicos

- **SGBD utilizado**: PostgreSQL.
- **Versão recomendada**: PostgreSQL 15+
- **Ferramentas utilizadas**:
  - BrModelo, PgAdmin, VsCode.
