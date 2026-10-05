create database empresa;

use empresa;

create table Departamento (
	id_departamento int auto_increment primary key,
	nome varchar(100),
	area varchar(100)
);

create table Funcionario (
	id_funcionario int auto_increment primary key,
	nome varchar(100),
	email varchar(100),
	funcao enum('Desenvolvedor', 'Gerente', 'Analista', 'Designer'),
	id_departamento int,
	foreign key (id_departamento) references Departamento (id_departamento)
);

create table Projetos (
	id_projetos int auto_increment primary key,
	nome varchar(100),
	finalidade enum('Interno', 'Cliente', 'Pesquisa')
);

create table Funcionario_projeto (
	idFuncionarioProjeto int auto_increment primary key,
	id_funcionario int,
	foreign key (id_funcionario) references Funcionario (id_funcionario),
	id_projetos int,
	foreign key (id_projetos) references Projetos (id_projetos)
);

insert into Departamento (nome, area)
values
("Tecnologia da Informação", "TI"),
("Recursos Humanos", "RH"),
("Marketing", "Comunicação");

insert into Funcionario (nome, email, funcao, id_departamento)
values
("Carlos Silva", "carlos@empresa.com", "Desenvolvedor", 1),
("Mariana Santos", "mariana@empresa.com", "Gerente", 2),
("Lucas Oliveira", "lucas@empresa.com", "Analista", 1);

insert into Projetos (nome, finalidade)
values
("Sistema Interno de RH", "Interno"),
("E-commerce Cliente X", "Cliente"),
("Pesquisa de IA", "Pesquisa");

insert into Funcionario_projeto (id_funcionario, id_projetos)
values
(1, 1),
(1, 2),
(3, 3);