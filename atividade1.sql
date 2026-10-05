create database escola;

use escola;

create table alunos (
	id_aluno int auto_increment primary key,
    nome varchar(100),
    idade int
);

create table professor (
	id_professor int auto_increment primary key,
    nome varchar(100),
    email varchar(100)
);

create table curso (
	id_curso int auto_increment primary key,
    nome varchar(100),
    descrição varchar(500),
    id_professor int,
    foreign key (id_professor) references professor (id_professor)
);

create table matricula (
	id_matricula int auto_increment primary key,
    data_matricula datetime,
	id_aluno int,
    foreign key (id_aluno) references alunos (id_aluno),
    id_curso int,
    foreign key (id_curso) references curso (id_curso)
);

insert into alunos (nome, idade)
values
("Isaac", 17),
("Augusto", 17),
("João", 17);

insert into professor (nome, email)
values
("Tom", "tom@gmail.com"),
("Ricardo", "ricardo@gmail.com"),
("Thiago", "thiago@gmail.com");

insert into curso (nome, descrição, id_professor)
values
("DS", "Desenvolvimento de sistemas", 1),
("LP", "Lingua portuguesa", 3),
("Back-End", "PHP", 2);

insert into matricula (data_matricula,id_aluno,id_curso)
values
("2026-10-05 15:29",1,1),
("2026-10-04 14:30",2,2),
("2026-10-03 13:40",3,3);