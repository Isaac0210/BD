insert into clientes (nome, email, cidade, estado, telefone)
values ('Beatriz', 'beatriz@gmail.com', 'Mococa', 'SP', '19991775566'),
('Geraldo', 'geraldo@gmail.com', 'Monte Belo', 'SP', '1988653456');

insert into produtos (nome, preco, estoque)
values ('ps5', 4500.00, 10),
('xbox 360', 500, 5);

update produtos
set preco = preco - 25
where nome like '%Gamer%';

delete from clientes
where cidade = 'Monte Belo';

select * from clientes
where estado = 'SP'
order by nome;

select * from produtos
where preco between 100 and 1000;