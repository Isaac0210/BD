-- Isaac --
create database loja_virtual;

use loja_virtual;

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15),
    data_cadastro DATE
);

ALTER TABLE clientes ADD cpf varchar(14);
ALTER TABLE clientes MODIFY telefone varchar(20);
DROP TABLE clientes;

CREATE INDEX idx_nome_cliente
ON clientes (nome);

DROP INDEX idx_nome_cliente
ON clientes;

DROP DATABASE loja_virtual;

CREATE TABLE pedidos (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE,
    valor_total DECIMAL(10,2) CHECK (valor_total > 0),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);