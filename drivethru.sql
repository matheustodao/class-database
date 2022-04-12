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
    quantidade INT,
    prato_id INT,
    FOREIGN KEY pedido(prato_id) REFERENCES prato(id)
)

-- Adicionando um dado na tabela de pedido
ALTER TABLE pedidos
ADD COLUMN codigo INT AUTO_INCREMENT;

-- Inserindo dados na tabela de prato
INSERT INTO prato(nome, descricao, valor) VALUES('Spicy X-Bacon', 'Bacon, hamburguer, pimenta', 14.99);
INSERT INTO prato(nome, valor) VALUES('X-Tudo', 20);

-- Inserindo dados na tabela de pedido

