# Mercado All Blue

Sistema de gerenciamento de mercado feito em C# Windows Forms com banco de dados MySQL, desenvolvido em grupo durante o curso no Senac Santos em 2024.

## Sobre

Projeto final desenvolvido em equipe como atividade prática. Simula um sistema completo de gerenciamento de mercado, com controle de acesso por cargo, cadastro de funcionários e produtos, módulo de caixa com cupom fiscal e splash screen de carregamento.

## Funcionalidades

**Tela de Login**
- Autenticação com e-mail e senha validados no banco de dados
- Controle de acesso por cargo: Supervisor tem acesso total, Caixa tem acesso restrito

**Tela Principal**
- Navegação entre módulos via menu lateral com botões coloridos
- Restrição automática de menus conforme o cargo do usuário logado

**Módulo Caixa**
- Abrir e fechar cupom fiscal
- Adicionar produtos pelo código de barras com quantidade
- Exibir lista de produtos com marca, preço, código e descrição
- Remover produto do cupom com autenticação por senha
- Formas de pagamento: dinheiro, crédito e débito
- Cálculo automático de troco
- Nota Fiscal Paulista opcional com CPF
- Registro da venda no banco de dados ao finalizar

**Módulo Cadastro de Produtos**
- Cadastrar, buscar, atualizar e remover produtos
- Listagem de todos os produtos em tabela
- Busca por código de barras

**Módulo Cadastro de Funcionários**
- Cadastrar, buscar, atualizar e remover funcionários
- Campos: nome, data de nascimento, RG, CPF, sexo, telefone, login, senha e cargo
- Listagem de todos os funcionários em tabela

**Splash Screen**
- Tela de carregamento animada ao iniciar o sistema

## Testes

O projeto conta com testes unitários feitos com MSTest cobrindo as principais funcionalidades:

- **TestesDeLogin** — verifica login com credenciais corretas (Supervisor e Caixa), login incorreto e senha incorreta
- **TestesBuscaProduto** — verifica busca de produto por código de barras com dados corretos e incorretos
- **TestesAdicionarProduto** — verifica cadastro de produto no banco de dados
- **TesteCaixa** — verifica a leitura de produto pelo código usado no módulo de caixa
- **TestesAdicionarUsuario** — verifica cadastro de novo funcionário
- **TestesRemoverUsuario** — verifica remoção de funcionário pelo CPF

## Tecnologias

- C#
- .NET Windows Forms
- MySQL
- MSTest (testes unitários)
- Visual Studio

## Banco de Dados

O banco se chama `Mercado_Emporio_Blue`. O script para criar as tabelas e dados iniciais está no arquivo `database.sql` na raiz do repositório.

## Como rodar

1. Clone o repositório
2. Execute o script `database.sql` no MySQL
3. Abra o arquivo `ProjetoMercado.sln` no Visual Studio
4. Pressione F5 para executar
