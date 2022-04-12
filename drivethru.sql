DROP DATABASE drivethru;
CREATE DATABASE drivethru;
USE drivethru;

CREATE TABLE pratos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    valor INT NOT NULL
)


CREATE TABLE pedidos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT NOT NULL,
    prato_id INT,
    FOREIGN KEY pedidos(prato_id) REFERENCES pratos(id)
)

-- Adicionando um dado na tabela de pedido
ALTER TABLE pedidos
ADD codigo INT;

-- Adicionando tipo a mais na coluna codigo de pedidos
ALTER TABLE pedidos
MODIFY COLUMN codigo INT NOT NULL;

-- Inserindo dados na tabela de prato
INSERT INTO pratos(nome, descricao, valor) VALUES('Spicy X-Bacon', 'Bacon, hamburguer, pimenta', 14.99);
INSERT INTO pratos(nome, valor) VALUES('X-Tudo', 20);

-- Inserindo dados na tabela de pedido
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(1, 000, 4);
INSERT INTO pedidos(prato_id, codigo, quantidade) VALUES(2, 001, 2);

-- Deletando um pedido pelo id
DELETE FROM pedidos WHERE id = 1;
