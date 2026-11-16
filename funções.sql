select now();

select curdate();

select curtime();

select year(now());

select month(curdate());

select day('2024-10-15');

select date_add(now(), interval 7 day);

select datediff('2026-11-16', '2009-10-02');

select abs(-50);

select round(19.567,2);

select ceil(9.1);

select floor(9.9);

select pow(2,3);

select rand();

select round(rand(),2);

select upper('isaac');

select lower('ISAAC');

select length('SQL');

select concat('isaac','-','email');

select substring('isaac',1,3);

select replace('isaac matias','matias','m');

select trim(' João ');

use ecommerce;
select count(*) from clientes;
select sum(preco) from produtos;
select avg(preco) from produtos;
select min(preco) from produtos;
select max(preco) from produtos;

alter table produtos add column categoria varchar(50);

select categoria, count(8) as total_produtos
from produtos
group by categoria;

select categoria, avg(preco) as media_preco
from produtos
group by categoria;

select categoria, min(preco) as menor_preco, max(preco) as max_preco
from produtos
group by categoria;

select categoria, count(*) as total
from produtos
group by categoria
having count(*) > 1;