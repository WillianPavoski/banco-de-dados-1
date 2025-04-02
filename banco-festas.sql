CREATE TABLE Clientes (
    idClientes INT PRIMARY KEY,
    nome VARCHAR(100),
    -- outros campos necessários
);

CREATE TABLE Festas (
    idFestas INT PRIMARY KEY,
    idClientes INT,
    -- outros campos necessários
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY,
    idFestas INT,
    idClientes INT,
    -- outros campos necessários
    FOREIGN KEY (idFestas) REFERENCES Festas(idFestas),
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
);

CREATE TABLE Boleto (
    Cod_barras INT PRIMARY KEY,
    data_vencimento DATE,
    -- outros campos necessários
);

CREATE TABLE Pix (
    CodigoPIX INT PRIMARY KEY,
    -- outros campos necessários
);

CREATE TABLE CartaoDeCredito (
    idCartao INT PRIMARY KEY,
    CPF INT,
    Endereco VARCHAR(255),
    NomeNoCartao VARCHAR(100),
    -- outros campos necessários
);
