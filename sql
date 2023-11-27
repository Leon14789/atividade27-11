-- Tabela Veiculos
CREATE TABLE Veiculos (
    id_veiculo INT PRIMARY KEY,
    cor VARCHAR(255),
    placa VARCHAR(20),
    modelo_veiculo VARCHAR(255)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    cpf VARCHAR(20),
    dta_nasci VARCHAR(20),
    cod_locacao INT,
    FOREIGN KEY (cod_locacao) REFERENCES Locacao(cod_locacao)
);

-- Tabela Locacao
CREATE TABLE Locacao (
    cod_locacao INT PRIMARY KEY,
    valor_diaria DECIMAL(10, 2),
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);

