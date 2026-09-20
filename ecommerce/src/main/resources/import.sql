INSERT INTO tb_categoria (nome) VALUES ('Eletrónicos');
INSERT INTO tb_categoria (nome) VALUES ('Livros');
INSERT INTO tb_categoria (nome) VALUES ('Roupas');
INSERT INTO tb_categoria (nome) VALUES ('Alimentos');
INSERT INTO tb_categoria (nome) VALUES ('Brinquedos');


INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Smartphone', 1500.00, 1);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Livro Java', 80.00, 2);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Camiseta', 50.00, 3);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Café 500g', 15.00, 4);
INSERT INTO tb_produto (nome, preco, categoria_id) VALUES ('Carrinho', 30.00, 5);


INSERT INTO tb_cliente (nome, email, telefone) VALUES ('João Silva', 'joao@email.com', '11999990001');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Maria Santos', 'maria@email.com', '11999990002');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Carlos Souza', 'carlos@email.com', '11999990003');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Ana Lima', 'ana@email.com', '11999990004');
INSERT INTO tb_cliente (nome, email, telefone) VALUES ('Pedro Rocha', 'pedro@email.com', '11999990005');


INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-01T10:00:00', 'AGUARDANDO_PAGAMENTO', 1500.00, 1);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-02T11:30:00', 'PAGO', 80.00, 2);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-03T14:15:00', 'PAGO', 100.00, 3);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-04T16:45:00', 'ENVIADO', 15.00, 4);
INSERT INTO tb_pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-05T09:20:00', 'ENTREGUE', 60.00, 5);


INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 1500.00, 1, 1);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 80.00, 2, 2);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 50.00, 3, 3);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 15.00, 4, 4);
INSERT INTO tb_item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 30.00, 5, 5);


INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (1500.00, '2026-09-01T10:05:00', 'PENDENTE', 'PIX', 1);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (80.00, '2026-09-02T11:35:00', 'CONFIRMADO', 'CARTAO_CREDITO', 2);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (100.00, '2026-09-03T14:20:00', 'CONFIRMADO', 'BOLETO', 3);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (15.00, '2026-09-04T16:50:00', 'CONFIRMADO', 'PIX', 4);
INSERT INTO tb_pagamento (valor, data, status, tipo, pedido_id) VALUES (60.00, '2026-09-05T09:25:00', 'CONFIRMADO', 'CARTAO_CREDITO', 5);
