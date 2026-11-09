-- Seleciona o nome, cidade e estado dos clientes cujo estado é 'SP', ordenando o resultado alfabeticamente pelo nome
select nome, cidade, estado
from clientes
where estado = 'SP'
order by nome;

-- Retorna todas as colunas e registros da tabela de produtos
select * from produtos;

-- Retorna a lista de cidades dos clientes, removendo duplicadas (mostra cada cidade apenas uma vez)
select distinct cidade from clientes;

-- Retorna apenas os dois primeiros registros da tabela de clientes
select * from clientes limit 2;

-- Seleciona todos os registros da tabela de clientes onde a cidade é exatamente 'São Paulo'
select * from clientes
where cidade = 'São Paulo';

-- Seleciona todos os produtos cujo preço seja diferente de 120
select * from produtos
where preco != 120;

-- Seleciona todos os produtos cujo preço seja maior que 300
select * from produtos
where preco > 300;

-- Seleciona todos os produtos cujo estoque seja menor que 10 unidades
select * from produtos
where estoque < 10;

-- Seleciona todos os produtos cujo preço seja maior ou igual a 120
select * from produtos
where preco >= 120;

-- Seleciona todos os produtos cujo preço seja menor ou igual a 120
select * from produtos
where preco <= 120;

-- Seleciona produtos que atendam a duas condições simultaneamente: o nome seja 'Notebook Dell' E o preço seja maior que 4000
select * from produtos
where nome = 'Notebook Dell' and preco > 4000;

-- Seleciona clientes que estejam em 'SP' OU em 'RJ' (atende a qualquer uma das duas condições)
select * from clientes
where estado = 'SP' or estado = 'RJ';

-- Seleciona todos os clientes cujo estado NÃO seja 'SP' (inverte a condição)
select * from clientes
where not estado = 'SP';

-- Seleciona todos os produtos com o preço entre 10 e 1000
select * from produtos
where preco between 10 and 1000;

select * from clientes
where estado in ('SP','RJ');

select * from produtos
where nome like 'N%';

select * from clientes
where telefone is null;