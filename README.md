# Programação e Desenvolvimento de Banco de Dados

Este repositório contém scripts SQL para criação, inicialização, inserção de dados e consultas em um banco de dados de uma loja fictícia, desenvolvido como portfólio para a disciplina de Programação e Desenvolvimento de Banco de Dados da UNOPAR.

## Estrutura do Projeto

- **init.sql**
  Cria o banco de dados `Loja` e seleciona-o para uso.

- **create-tables.sql**
  Cria as tabelas principais do sistema: `Estado`, `Municipio`, `Cliente` e `ContaReceber`, incluindo chaves primárias, estrangeiras e restrições de integridade.

- **inserir.sql**
  Insere dados de exemplo nas tabelas criadas, facilitando testes e demonstrações.

- **consulta.sql**
  Cria a view `vw_ContasNaoPagas`, que exibe as contas a receber que ainda não foram pagas, com informações do cliente e da conta.

## Como Utilizar

1. **Crie o banco de dados e selecione-o:**
   ```sql
   SOURCE init.sql;

2. **Crie as tabelas:**
   ```sql
    SOURCE create-tables.sql;

3. **Insira os dados de exemplo:**
   ```sql
    SOURCE inserir.sql;

4. **Crie a view de consulta:**
   ```sql
    SOURCE consulta.sql;

### Sobre as Tabelas
- Estado: Armazena os estados brasileiros.
- Municipio: Armazena municípios, vinculados a um estado.
- Cliente: Armazena dados dos clientes, vinculados a um município.
- ContaReceber: Armazena contas a receber dos clientes, com status (registrada, cancelada, paga).

### Exemplo de Consulta

Para visualizar as contas não pagas:
```sql
SELECT * FROM vw_ContasNaoPagas;
