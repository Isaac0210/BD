CREATE DATABASE loja_simples;
USE loja_simples;

CREATE TABLE clientes_pf (
  nome VARCHAR(100),
  cidade VARCHAR(80)
);

CREATE TABLE clientes_pj (
  nome VARCHAR(100),
  cidade VARCHAR(80)
);

INSERT INTO clientes_pf VALUES
  ('Ana', 'Mococa'),
  ('Bruno', 'Campinas');

INSERT INTO clientes_pj VALUES
  ('Ana', 'Mococa'),
  ('Mercado Central', 'Mococa');
  
  -- Sem duplicata sem duplicata pois usa UNION 'Ana' em 'Mococa' aparece nas duas tabelas mas sai uma vez só
USE loja_simples;
SELECT nome, cidade FROM clientes_pf
UNION
SELECT nome, cidade FROM clientes_pj;

-- Com duplicata pois usa UNION ALL Traz todas as linhas, inclusive 'Ana'
USE loja_simples;
SELECT nome, cidade FROM clientes_pf
UNION ALL
SELECT nome, cidade FROM clientes_pj;