INSERT INTO Cliente (cpf_cnpj, nome, email, telefone, logradouro, numero, complemento) VALUES
('12345678901', 'João Silva', 'joao@email.com', '48991234567', 'Rua das Flores', '123', 'Apto 10'),
('23456789012', 'Maria Oliveira', 'maria@email.com', '48992345678', 'Av. Central', '456', 'Casa 5'),
('34567890123', 'Pedro Santos', 'pedro@email.com', '48993456789', 'Rua do Sol', '789', NULL),
('45678901234', 'Ana Pereira', 'ana@email.com', '48994567890', 'Av. das Palmeiras', '321', 'Bloco B'),
('56789012345', 'Carlos Souza', 'carlos@email.com', '48995678901', 'Rua das Estrelas', '654', 'Fundos'),
('67890123456', 'Lucia Mendes', 'lucia@email.com', '48996789012', 'Av. da Liberdade', '987', NULL),
('78901234567', 'Rafael Lima', 'rafael@email.com', '48997890123', 'Rua da Paz', '147', 'Apto 3'),
('89012345678', 'Fernanda Costa', 'fernanda@email.com', '48998901234', 'Av. das Águas', '258', 'Casa 2'),
('90123456789', 'Gustavo Almeida', 'gustavo@email.com', '48999012345', 'Rua dos Pinheiros', '369', NULL),
('01234567890', 'Juliana Ferreira', 'juliana@email.com', '48990123456', 'Av. do Comércio', '741', 'Loja 1');

INSERT INTO Usuario (cpf, rg, senha, nome, nome_de_usuario, cargo, permissoes, tipo) VALUES
('11050140966', '5879808', '$2b$10$sYK9L3XrW1TNQrrpJX1WZuKk255cb6MQooLdhsX7RxXeVegBad5z2', 'Marco Alves', 'marcoal', 'Admin', 'Admin', 1),
('22061251077', '6980919', '$2b$10$Q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9m0n1b2v3c4x5z6', 'Lucas Pereira', 'lucasp', 'Técnico', 'Manutenção', 2),
('33072362188', '7091020', '$2b$10$A2s3d4f5g6h7j8k9l0m1n2b3v4c5x6z7q1w2e3r4t5y6u7i8o9p0', 'Ana Costa', 'anac', 'Técnico', 'Manutenção', 2),
('44083473299', '8102131', '$2b$10$B3v4c5x6z7q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9m0n', 'Paulo Silva', 'paulos', 'Técnico', 'Manutenção', 2),
('55094584300', '9213242', '$2b$10$C4x5z6q1w2e3r4t5y6u7i8o9p0a1s2d3f4g5h6j7k8l9m0n1b2v', 'Mariana Lima', 'marianl', 'Técnico', 'Manutenção', 2),
('66105695411', '0324353', '$2b$10$D5y6u7i8o9p0a1s2d3f4g5h6j7k8l9m0n1b2v3c4x5z6q1w2e3r', 'Ricardo Souza', 'ricos', 'Técnico', 'Manutenção', 2),
('77116706522', '1435464', '$2b$10$E6t7y8u9i0o1p2a3s4d5f6g7h8j9k0l1m2n3b4v5c6x7z8q9w0e', 'Beatriz Almeida', 'beatra', 'Técnico', 'Manutenção', 2),
('88127817633', '2546575', '$2b$10$F7u8i9o0p1a2s3d4f5g6h7j8k9l0m1n2b3v4c5x6z7q1w2e3r4t', 'Fernando Santos', 'ferns', 'Técnico', 'Manutenção', 2),
('99138928744', '3657686', '$2b$10$G8i9o0p1a2s3d4f5g6h7j8k9l0m1n2b3v4c5x6z7q1w2e3r4t5y', 'Camila Oliveira', 'camil', 'Técnico', 'Manutenção', 2),
('10149039855', '4768797', '$2b$10$H9o0p1a2s3d4f5g6h7j8k9l0m1n2b3v4c5x6z7q1w2e3r4t5y6u', 'Diego Ferreira', 'diegof', 'Técnico', 'Manutenção', 2);

INSERT INTO Ordem_de_Servico (data, data_de_entrega, reclamacoes_e_necessidades, status, valor, descricao_do_servico, cliente_cpf_cnpj, usuario_cpf) VALUES
('2025-07-01', '2025-07-10', 'Notebook não liga', 'Em execução', 250.00, 'Diagnóstico de hardware', '12345678901', '22061251077'),
('2025-07-02', '2025-07-12', 'Impressora com erro de tinta', 'Aguardando peça', 150.00, 'Troca de cartucho', '23456789012', '33072362188'),
('2025-07-03', '2025-07-15', 'Computador lento', 'Em processo', 300.00, 'Otimização de software', '34567890123', '44083473299'),
('2025-07-04', NULL, 'Tela quebrada', 'Em aberto', 500.00, 'Troca de display', '45678901234', '55094584300'),
('2025-07-05', '2025-07-20', 'Fonte queimada', 'Aguardando aprovação', 200.00, 'Substituição de fonte', '56789012345', '66105695411'),
('2025-07-06', '2025-07-18', 'Erro de conexão', 'Finalizada', 100.00, 'Configuração de rede', '67890123456', '77116706522'),
('2025-07-07', NULL, 'Mouse não funciona', 'Em execução', 50.00, 'Teste de periférico', '78901234567', '88127817633'),
('2025-07-08', '2025-07-25', 'HD com bad blocks', 'Aguardando peça', 400.00, 'Substituição de HD', '89012345678', '99138928744'),
('2025-07-09', '2025-07-22', 'Software travando', 'Em processo', 150.00, 'Reinstalação de sistema', '90123456789', '10149039855'),
('2025-07-10', NULL, 'Teclado com teclas soltas', 'Em aberto', 80.00, 'Reparo de teclado', '01234567890', '22061251077'),
('2025-07-11', '2025-07-28', 'Placa-mãe com defeito', 'Aguardando aprovação', 600.00, 'Diagnóstico e substituição', '12345678901', '33072362188'),
('2025-07-12', '2025-07-30', 'Monitor sem imagem', 'Finalizada', 300.00, 'Teste e reparo', '23456789012', '44083473299'),
('2025-07-13', NULL, 'Fonte barulhenta', 'Em execução', 180.00, 'Substituição de fonte', '34567890123', '55094584300'),
('2025-07-14', '2025-08-01', 'Erro de impressão', 'Em processo', 120.00, 'Manutenção de impressora', '45678901234', '66105695411'),
('2025-07-15', NULL, 'PC não inicializa', 'Aguardando peça', 450.00, 'Diagnóstico completo', '56789012345', '77116706522');