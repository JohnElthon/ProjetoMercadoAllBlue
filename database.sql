CREATE DATABASE Mercado_Emporio_Blue;

USE Mercado_Emporio_Blue;

CREATE TABLE Produtos (
    idProdutos INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Marca VARCHAR(60),
    Preco DOUBLE,
    Codigo VARCHAR(30),
    Descricao VARCHAR(100)
);

CREATE TABLE Funcionarios (
    idFuncionarios INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(90) NOT NULL,
    DataNascimento VARCHAR(10) NOT NULL,
    RG VARCHAR(12),
    CPF VARCHAR(19),
    Sexo VARCHAR(10),
    Telefone VARCHAR(17),
    Login VARCHAR(30) NOT NULL,
    Senha VARCHAR(4) NOT NULL,
    Cargo VARCHAR(30)
);

CREATE TABLE Nota_Fiscal (
    idNota_Fiscal INT PRIMARY KEY,
    CPF VARCHAR(30),
    Quantidade INT,
    valor_Compra DOUBLE,
    Valor_Pago DOUBLE,
    Forma_Pagamento VARCHAR(28),
    Troco DOUBLE
);

-- Dados iniciais de produtos
INSERT INTO Produtos (Marca, Preco, Codigo, Descricao) VALUES
('Camil', 6.60, '00001', 'Arroz Tradicional Camil 1kg'),
('Camil', 7.79, '00002', 'Feijão Tradicional Carioca Camil 1kg'),
('Italac', 4.99, '00003', 'Leite Integral Italac 1L'),
('Moça', 9.50, '00004', 'Leite Condensado Moça Tradicional Lata 395g'),
('Adria', 3.99, '00005', 'Macarrão Adria Tradicional Espaguete 500g'),
('Quero', 1.79, '00006', 'Molho de Tomate Quero Tradicional Sachê 300g'),
('Dona Benta', 6.89, '00007', 'Farinha de Trigo Dona Benta Tradicional Pacote 1kg'),
('Toddy', 8.00, '00008', 'Achocolatado em Pó Toddy Tradicional Pote 370g'),
('Liza', 7.79, '00009', 'Óleo de Soja Liza Tradicional Pet 900ml'),
('Qually', 5.29, '00010', 'Margarina Qually Tradicional com sal Pote 500g'),
('Royal', 4.19, '00011', 'Fermento Químico Royal em Pó Tradicional Pote 100g'),
('União', 4.09, '00012', 'Açúcar União Refinado Tradicional Pacote 1kg'),
('Cisne', 2.96, '00013', 'Sal Cisne Refinado Tradicional Pacote 1kg');

-- Dados iniciais de funcionários
INSERT INTO Funcionarios (Nome, DataNascimento, RG, CPF, Sexo, Telefone, Login, Senha, Cargo) VALUES
('Lucas Almeida', '1985-03-22', '123456789', '123.456.789-00', 'Masculino', '(11) 98765-4321', 'Lucasalmeida@Emporioallblue', '1234', 'Supervisor'),
('Carlos Santos', '1982-11-30', '123123123', '321.654.987-00', 'Masculino', '(31) 93456-7890', 'Carloseduardo@Emporioallblue', '4321', 'Caixa'),
('Fernanda Costa', '1995-02-10', '456456456', '456.789.123-00', 'Feminino', '(41) 92345-6789', 'Fernandacosta@Emporioallblue', '4233', 'Caixa'),
('Rafael Oliveira', '2000-08-18', '789789789', '789.123.456-00', 'Masculino', '(51) 95678-1234', 'Rafaeloliveira@Emporioallblue', '4322', 'Caixa');
