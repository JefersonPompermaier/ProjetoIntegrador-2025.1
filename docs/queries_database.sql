SELECT cpf, nome FROM Usuario WHERE tipo = 2;

SELECT * FROM Ordem_de_Servico WHERE status = 'Finalizada';

SELECT o.*, c.nome AS cliente_nome
FROM Ordem_de_Servico o
JOIN Cliente c ON o.cliente_cpf_cnpj = c.cpf_cnpj
WHERE c.cpf_cnpj = '67890123456';

SELECT nome, cargo FROM Usuario;

-- ordens de serviço com os nomes do cliente e do técnico responsável
SELECT
    os.ordem_servico_id,
    os.data_abertura,
    os.status,
    c.nome AS nome_cliente,
    u.nome AS nome_tecnico
FROM
    Ordem_de_Servico AS os
JOIN
    Cliente AS c ON os.cliente_cpf_cnpj = c.cpf_cnpj
JOIN
    Usuario AS u ON os.usuario_cpf = u.cpf;

-- valor total de produtos para cada ordem de serviço
SELECT
    os.ordem_servico_id,
    c.nome AS nome_cliente,
    SUM(osp.quantidade * osp.valor_unitario) AS valor_total_produtos
FROM
    Ordem_de_Servico AS os
JOIN
    Ordem_de_Servico_Produto AS osp ON os.ordem_servico_id = osp.ordem_servico_id
JOIN
    Cliente as c ON os.cliente_cpf_cnpj = c.cpf_cnpj
GROUP BY
    os.ordem_servico_id, c.nome
ORDER BY
    valor_total_produtos DESC;

-- quantidade total vendida de cada produto
SELECT
    p.nome AS nome_produto,
    p.preco_venda,
    SUM(osp.quantidade) AS quantidade_total_vendida
FROM
    Produto AS p
LEFT JOIN
    Ordem_de_Servico_Produto AS osp ON p.produto_id = osp.produto_id
GROUP BY
    p.produto_id, p.nome, p.preco_venda
ORDER BY
    quantidade_total_vendida DESC;

-- relatório de uma ordem de serviço específica
SELECT
    os.ordem_servico_id,
    os.status,
    os.data_abertura,
    os.descricao_servico,
    c.nome AS nome_cliente,
    u.nome AS nome_tecnico,
    p.nome AS nome_produto,
    osp.quantidade,
    osp.valor_unitario
FROM
    Ordem_de_Servico AS os
JOIN
    Cliente AS c ON os.cliente_cpf_cnpj = c.cpf_cnpj
JOIN
    Usuario AS u ON os.usuario_cpf = u.cpf
LEFT JOIN
    Ordem_de_Servico_Produto AS osp ON os.ordem_servico_id = osp.ordem_servico_id
LEFT JOIN
    Produto AS p ON osp.produto_id = p.produto_id
WHERE
    os.ordem_servico_id = 3;

-- quantas OS cada técnico finalizou
SELECT
    u.nome AS nome_tecnico,
    COUNT(os.ordem_servico_id) AS total_os_finalizadas
FROM
    Usuario AS u
JOIN
    Ordem_de_Servico AS os ON u.cpf = os.usuario_cpf
WHERE
    os.status = 'Finalizada'
GROUP BY
    u.cpf, u.nome
ORDER BY
    total_os_finalizadas DESC;
