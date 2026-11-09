CREATE DATABASE minha_loja;
USE minha_loja;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL
);

INSERT INTO produtos (nome, preco, quantidade) VALUES 
('Notebook Gamer', 4500.00, 10),
('Mouse Sem Fio', 120.50, 50),
('Teclado Mecânico', 350.00, 25),
('Monitor 24 polegadas', 950.00, 15),
('Headset Bluetooth', 250.00, 30);

UPDATE produtos 
SET preco = 110.00, quantidade = 45 
WHERE id = 2;

DELETE FROM produtos 
WHERE id = 5;

SELECT id, nome, preco, quantidade 
FROM produtos 
WHERE preco > 300.00;