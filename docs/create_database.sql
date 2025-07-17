
CREATE DATABASE top_duo_informatica;

\c top_duo_informatica

CREATE TABLE Cliente (
    cpf_cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50)
);

CREATE TABLE Usuario (
    cpf VARCHAR(14) PRIMARY KEY,
    rg VARCHAR(15),
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    nome_de_usuario VARCHAR(50) UNIQUE NOT NULL,
    cargo VARCHAR(100),
    permissoes TEXT,
    tipo INT NOT NULL CHECK (tipo IN (1, 2)),
    ativo BOOLEAN DEFAULT TRUE,
    logradouro VARCHAR(255),
    numero VARCHAR(20),
    complemento VARCHAR(100)
);

CREATE TABLE Produto (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    preco_venda DECIMAL(10, 2) NOT NULL CHECK (preco_venda >= 0)
);

CREATE TABLE Ordem_de_Servico (
    ordem_servico_id SERIAL PRIMARY KEY,
    data_abertura TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    data_entrega DATE,
    reclamacoes_e_necessidades TEXT,
    status VARCHAR(50) NOT NULL,
    valor_total DECIMAL(10, 2),
    descricao_servico TEXT,
    cliente_cpf_cnpj VARCHAR(20) NOT NULL,
    usuario_cpf VARCHAR(14) NOT NULL,
    FOREIGN KEY (cliente_cpf_cnpj) REFERENCES Cliente(cpf_cnpj),
    FOREIGN KEY (usuario_cpf) REFERENCES Usuario(cpf)
);


CREATE TABLE Ordem_de_Servico_Produto (
    osp_id SERIAL PRIMARY KEY,
    ordem_servico_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    valor_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ordem_servico_id) REFERENCES Ordem_de_Servico(ordem_servico_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);