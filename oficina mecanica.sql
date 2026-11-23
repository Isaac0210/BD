CREATE DATABASE oficina_mecanica; 
USE oficina_mecanica; 

CREATE TABLE clientes (
	id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    data_cadastro DATE 
); 

CREATE TABLE servicos (
	id_servicos INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(150),
    categoria VARCHAR(100),
    preco DECIMAL(10,2) 
); 

CREATE TABLE veiculos ( 
	id_veiculos INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    placa VARCHAR(10),
    ano INT,
    id_clientes INT,
	FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes) 
); 

CREATE TABLE ordens_servicos (
	id_ordens_servicos INT AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT,
	FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes),
    id_veiculos INT,
    FOREIGN KEY (id_veiculos) REFERENCES veiculos (id_veiculos),
    id_servicos INT,
    FOREIGN KEY (id_servicos) REFERENCES servicos (id_servicos),
    data_os DATE,
    quantidade int
);

INSERT INTO clientes (nome, telefone, cidade, data_cadastro) VALUES
('Carlos Mendes', '19991234567', 'Piracicaba', '2026-11-10'),
('Fernanda Lima', '16982345678', 'São Carlos', '2026-11-11'),
('Rafael Costa', '11973456789', 'Jundiaí', '2026-11-12'),
('Juliana Almeida', '19964567890', 'Indaiatuba', '2026-11-13'),
('Bruno Rocha', '16955678901', 'Araraquara', '2026-11-14');

INSERT INTO servicos (descricao, categoria, preco) VALUES
('Troca de óleo e filtro', 'Manutenção', 180.00),
('Alinhamento e balanceamento', 'Suspensão', 120.00),
('Lavagem completa', 'Estética', 60.00),
('Polimento cristalizado', 'Estética', 350.00),
('Revisão de freios', 'Mecânica', 250.00);

INSERT INTO veiculos (modelo, placa, ano, id_clientes) VALUES
('Hyundai HB20', 'BRA2E19', 2023, 1),
('Jeep Compass', 'GTR8H45', 2022, 2),
('Fiat Strada', 'KLM5N90', 2024, 3),
('Volkswagen Polo', 'QWE3R71', 2021, 4),
('Nissan Kicks', 'ZXC9V12', 2025, 5);

INSERT INTO ordens_servicos (id_clientes, id_veiculos, id_servicos, data_os, quantidade) VALUES
(1, 1, 1, '2026-11-10', 1),
(2, 2, 4, '2026-11-11', 1),
(3, 3, 2, '2026-11-12', 1),
(4, 4, 3, '2026-11-13', 2),
(5, 5, 5, '2026-11-14', 1);

SELECT * FROM clientes;
SELECT * FROM ordens_servicos
WHERE data_os > '2026-07-27';

UPDATE servicos
SET preco = 300.00
WHERE descricao = 'Polimento cristalizado';

DELETE FROM veiculos
WHERE id_veiculos =6;

SELECT cidade, count(*) AS total_clientes
FROM clientes
GROUP BY cidade;

SELECT categoria, count(*) AS total_servicos
FROM servicos
GROUP BY categoria;

SELECT id_clientes, count(*) AS ordem_servicos
FROM ordens_servicos
GROUP BY id_clientes
HAVING count(*) >= 1;