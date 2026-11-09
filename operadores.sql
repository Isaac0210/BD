select nome, cidade, estado
from clientes
where estado = 'SP'
order by nome;
select * from produtos;
select distinct cidade from clientes;
select * from clientes limit 2;
select * from clientes
where cidade = 'São Paulo';
select * from produtos
where preco != 120;
select * from produtos
where preco > 300;
select * from produtos
where estoque < 10;
select * from produtos
where preco >= 120;
select * from produtos
where preco <= 120;