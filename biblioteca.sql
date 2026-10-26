-- Criando o banco de dados biblioteca
create database biblioteca;
-- Usando o banco de dados biblioteca
use biblioteca;

-- Criando a tabela autor
create table autor (
    id_autor int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo VARCHAR(5) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Criando a tabela livro
create table livro (
    id_livro int AUTO_INCREMENT PRIMARY KEY,
    id_autor int NOT NULL,
    FOREIGN KEY (id_autor) references autor (id_autor),
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL
);

-- Criando a tabela leitor
create table leitor (
    id_leitor int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Criando a tabela emprestimo
create table emprestimo (
    id_livro INT,
    FOREIGN KEY (id_livro) references livro (id_livro),
    id_leitor INT,
    FOREIGN KEY (id_leitor) references leitor (id_leitor),
    data_retirada DATE,
    data_entrega DATE
);

-- Adicionando telefone na tabela leitor
ALTER TABLE leitor ADD COLUMN telefone VARCHAR(20);

-- Inserindo dados na tabela autor
INSERT INTO autor (nome, sexo, email) VALUES 
('Machado de Assis', 'Mas.', 'machado@email.com'),
('J.K. Rowling', 'Fem.', 'jkrowling@email.com'),
('George Orwell', 'Mas.', 'orwell@email.com'),
('Clarice Lispector', 'Fem.', 'clarice@email.com'),
('Monteiro Lobato', 'Mas.', 'lobato@email.com');

-- Inserindo dados na tabela leitos
INSERT INTO leitor (nome, email, telefone) VALUES 
('Ana Silva', 'ana.silva@email.com', '(11) 98765-4321'),
('Carlos Souza', 'carlos.souza@email.com', '(11) 91234-5678'),
('Mariana Oliveira', 'mariana@email.com', '(21) 99888-7766'),
('João Pedro Santos', 'joao.santos@email.com', '(31) 97777-5544'),
('Beatriz Lima', 'beatriz.lima@email.com', '(41) 96666-3322');

-- Inserindo dados na tabela livro
INSERT INTO livro (id_autor, nome, genero) VALUES 
(1, 'Dom Casmurro', 'Romance'),
(2, 'Harry Potter e a Pedra Filosofal', 'Fantasia'),
(3, '1984', 'Ficção Científica'),
(4, 'A Hora da Estrela', 'Romance'),
(5, 'Sítio do Picapau Amarelo', 'Infantojuvenil');

-- Inserindo dados na tabela emprestimo
INSERT INTO emprestimo (id_livro, id_leitor, data_retirada, data_entrega) VALUES 
(1, 1, '2026-10-01', '2026-10-15'),
(2, 2, '2026-10-05', '2026-10-20'),
(3, 3, '2026-10-10', '2026-10-25'),
(4, 4, '2026-10-12', '2026-10-27'),
(5, 5, '2026-10-15', '2026-10-30');

-- Atualizando o numero do leitor 1
UPDATE leitor
SET telefone = '(11) 99999-0000'
where id_leitor = 1;

-- Removendo o registro de emprestimo do leitor 5
delete from emprestimo
where id_leitor = 5;