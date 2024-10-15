create database ex22

use ex22

create table autores(
id int primary key identity (1,1),
nome_autor varchar(50) not null,
)

create table livros(
id_livro int primary key identity (1,1),
nome_livro varchar(50) not null,
)

insert into autores (nome_autor) values ('J.K. Rowling');
insert into autores (nome_autor) values ('George R.R. Martin');
insert into autores (nome_autor) values ('J.R.R. Tolkien');
insert into autores (nome_autor) values ('Agatha Christie');
insert into autores (nome_autor) values ('Isaac Asimov');
insert into autores (nome_autor) values ('Stephen King');
insert into autores (nome_autor) values ('Mark Twain');
insert into autores (nome_autor) values ('Jane Austen');
insert into autores (nome_autor) values ('F. Scott Fitzgerald');
insert into autores (nome_autor) values ('Ernest Hemingway');

insert into livros (nome_livro) values ('Harry Potter e a Pedra Filosofal');
insert into livros (nome_livro) values ('A Guerra dos Tronos');
insert into livros (nome_livro) values ('O Senhor dos Anéis: A Sociedade do Anel');
insert into livros (nome_livro) values ('Assassinato no Expresso do Oriente');
insert into livros (nome_livro) values ('Fundação');
insert into livros (nome_livro) values ('It: A Coisa');
insert into livros (nome_livro) values ('As Aventuras de Tom Sawyer');
insert into livros (nome_livro) values ('Orgulho e Preconceito');
insert into livros (nome_livro) values ('O Grande Gatsby');
insert into livros (nome_livro) values ('O Velho e o Mar');

