SELECT * FROM Cliente;
SELECT * FROM Usuario;

SELECT cpf, nome FROM Usuario WHERE tipo = 2;

SELECT * FROM Ordem_de_Servico;

SELECT * FROM Ordem_de_Servico WHERE status = 'Finalizada';

SELECT cpf_cnpj, nome, complemento FROM Cliente WHERE complemento IS NOT NULL;

SELECT o.*, c.nome AS cliente_nome
FROM Ordem_de_Servico o
JOIN Cliente c ON o.cliente_cpf_cnpj = c.cpf_cnpj
WHERE c.cpf_cnpj = '12345678901';

SELECT nome, cargo FROM Usuario;

SELECT * FROM Ordem_de_Servico WHERE valor > 200;

SELECT c.nome AS cliente_nome, o.numero, o.status, o.data
FROM Cliente c
LEFT JOIN Ordem_de_Servico o ON c.cpf_cnpj = o.cliente_cpf_cnpj;