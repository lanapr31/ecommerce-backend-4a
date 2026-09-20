INSERT INTO tb_categoria (nome) VALUES ('Eletrônicos');
INSERT INTO tb_categoria (nome) VALUES ('Livros');
INSERT INTO tb_categoria (nome) VALUES ('Roupas');
INSERT INTO tb_categoria (nome) VALUES ('Alimentos');
INSERT INTO tb_categoria (nome) VALUES ('Móveis');


INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Smartphone', 2500.00, 1);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Livro de Java JPA', 120.00, 2);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Camiseta Algodão', 50.00, 3);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Café Especial', 35.00, 4);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Cadeira Ergonomica', 450.00, 5);


INSERT INTO tb_cliente (nome, email, telefone) VALUES ('João Silva', 'joao@email.com', '11999998888');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Maria Santos', 'maria@email.com', '11988887777');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Carlos Oliveira', 'carlos@email.com', '11977776666');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Ana Pereira', 'ana@email.com', '11966665555');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Lucas Rodrigues', 'lucas@email.com', '11955554444');


INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-01T10:00:00', 'FINALIZADO', 2500.00, 1);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-02T11:30:00', 'PENDENTE', 170.00, 2);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-03T14:15:00', 'CANCELADO', 50.00, 3);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-04T16:45:00', 'FINALIZADO', 70.00, 4);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-05T09:20:00', 'FINALIZADO', 450.00, 5);


INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 2500.00, 1, 1);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 120.00, 2, 2);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 50.00, 2, 3);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 35.00, 4, 4);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 450.00, 5, 5);


INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (2500.00, '2026-09-01T10:05:00', 'CONCLUIDO', 'CARTAO_CREDITO', 1);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (170.00, '2026-09-02T11:35:00', 'AGUARDANDO', 'PIX', 2);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (50.00, '2026-09-03T14:20:00', 'RECUSADO', 'CARTAO_CREDITO', 3);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (70.00, '2026-09-04T16:50:00', 'CONCLUIDO', 'PIX', 4);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (450.00, '2026-09-05T09:25:00', 'CONCLUIDO', 'BOLETO', 5);