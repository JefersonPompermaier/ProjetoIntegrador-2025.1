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
    cpf VARCHAR(11) PRIMARY KEY,
    rg VARCHAR(15),
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    nome_de_usuario VARCHAR(50) UNIQUE,
    cargo VARCHAR(100),
    permissoes TEXT,
    tipo INT NOT NULL CHECK (tipo IN (1, 2)), -- 1 Admin, 2 Funcionário
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE Ordem_de_Servico (
    numero SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    data_de_entrega DATE,
    reclamacoes_e_necessidades TEXT,
    equipamentos TEXT,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Em aberto', 'Em execução', 'Aguardando aprovação', 'Aguardando peça', 'Em processo', 'Recusada', 'Finalizada', 'Em garantia')),
    valor DECIMAL(10, 2),
    descricao_do_servico TEXT,
    cliente_cpf_cnpj VARCHAR(20),
    usuario_cpf VARCHAR(11),
    FOREIGN KEY (cliente_cpf_cnpj) REFERENCES Cliente(cpf_cnpj),
    FOREIGN KEY (usuario_cpf) REFERENCES Usuario(cpf)
);