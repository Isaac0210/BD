create database redesocial;

use redesocial;

create table Usuario (
	id_usuario int auto_increment primary key,
	username varchar(100),
	inscritos int,
	bio varchar(500)
);

create table Post (
	id_post int auto_increment primary key,
	titulo varchar(100),
	descricao varchar(500),
	data_de_publicacao datetime,
	id_usuario int,
	foreign key (id_usuario) references Usuario (id_usuario)
);

create table Hashtag (
	id_hashtag int auto_increment primary key,
	nome varchar(100),
	tema varchar(100),
	descricao varchar(500)
);

create table Post_Hashtag (
	id_post_hashtag int auto_increment primary key,
	id_post int,
	foreign key (id_post) references Post (id_post),
	id_hashtag int,
	foreign key (id_hashtag) references Hashtag (id_hashtag)
);

insert into Usuario (username, inscritos, bio)
values
("dev_tech", 1200, "Desenvolvedor de software e entusiasta da tecnologia"),
("ana_code", 850, "Criadora de conteúdo sobre programação"),
("joao_sql", 430, "Especialista em banco de dados");

insert into Post (titulo, descricao, data_de_publicacao, id_usuario)
values
("Dicas de SQL", "Aprenda a estruturar tabelas de forma eficiente", "2026-10-05 10:00:00", 1),
("Novidades em Dev", "Resumo das melhores ferramentas da semana", "2026-10-04 14:30:00", 2),
("Modelagem de Dados", "Entenda diagramas ER de forma simples", "2026-10-03 18:15:00", 3);

insert into Hashtag (nome, tema, descricao)
values
("#tecnologia", "Tecnologia", "Posts focados no mundo tech"),
("#programacao", "Desenvolvimento", "Conteúdos sobre códigos e linguagens"),
("#bancodedados", "SQL", "Dicas e tutoriais de banco de dados");

insert into Post_Hashtag (id_post, id_hashtag)
values
(1, 1),
(1, 3),
(2, 2);