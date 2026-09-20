INSERT INTO tb_categoria (nome) VALUES ('Eletrônicos');
INSERT INTO tb_categoria (nome) VALUES ('Livros');
INSERT INTO tb_categoria (nome) VALUES ('Roupas');
INSERT INTO tb_categoria (nome) VALUES ('Alimentos');
INSERT INTO tb_categoria (nome) VALUES ('Móveis');


INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Smartphone', 2500.00, 1);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Livro de Java JPA', 120.00, 2);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Camiseta Algodão', 50.00, 3);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Café Especial', 35.00, 4);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Cadeira Ergonômica', 450.00, 5);


INSERT INTO tb_cliente (nome, email, telefone) VALUES ('João Silva', 'joao@email.com', '11999998888');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Maria Santos', 'maria@email.com', '11988887777');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Carlos Oliveira', 'carlos@email.com', '11977776666');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Ana Pereira', 'ana@email.com', '11966665555');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Lucas Rodrigues', 'lucas@email.com', '11955554444');


INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-01 10:00:00', 'FINALIZADO', 2500.00, 1);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-02 11:00:00', 'AGUARDANDO_PAGAMENTO', 240.00, 2);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-03 12:00:00', 'CANCELADO', 150.00, 3);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-04 13:00:00', 'FINALIZADO', 35.00, 4);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-05 14:00:00', 'FINALIZADO', 450.00, 5);


INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (2500.00, '2026-09-01 10:05:00', 'APROVADO', 'CARTAO_CREDITO', 1);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (240.00, '2026-09-02 11:05:00', 'PENDENTE', 'PIX', 2);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (150.00, '2026-09-03 12:05:00', 'RECUSADO', 'BOLETO', 3);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (35.00, '2026-09-04 13:05:00', 'APROVADO', 'PIX', 4);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (450.00, '2026-09-05 14:05:00', 'APROVADO', 'CARTAO_CREDITO', 5);


INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 2500.00, 1, 1);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 120.00, 2, 2);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (3, 50.00, 3, 3);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 35.00, 4, 4);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 450.00, 5, 5);