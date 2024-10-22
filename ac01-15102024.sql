create database ex22

use ex22

create table autores(
id_autor int primary key identity (1,1),
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

create table autor_livros(
id int primary key identity(1,1),
id_autor int,
id_livro int
constraint fk_autorlivros_livros foreign key(id_livro)
references livros(id_livro),
constraint fk_autorlivros_autor foreign key(id_autor)
references autores(id_autor)
)

insert into autor_livros (id_autor, id_livro) values (1, 1); -- J.K. Rowling, Harry Potter e a Pedra Filosofal
insert into autor_livros (id_autor, id_livro) values (2, 2); -- George R.R. Martin, A Guerra dos Tronos
insert into autor_livros (id_autor, id_livro) values (3, 3); -- J.R.R. Tolkien, O Senhor dos Anéis: A Sociedade do Anel
insert into autor_livros (id_autor, id_livro) values (4, 4); -- Agatha Christie, Assassinato no Expresso do Oriente
insert into autor_livros (id_autor, id_livro) values (5, 5); -- Isaac Asimov, Fundação
insert into autor_livros (id_autor, id_livro) values (6, 6); -- Stephen King, It: A Coisa
insert into autor_livros (id_autor, id_livro) values (7, 7); -- Mark Twain, As Aventuras de Tom Sawyer
insert into autor_livros (id_autor, id_livro) values (8, 8); -- Jane Austen, Orgulho e Preconceito
insert into autor_livros (id_autor, id_livro) values (9, 9); -- F. Scott Fitzgerald, O Grande Gatsby
insert into autor_livros (id_autor, id_livro) values (10, 10); -- Ernest Hemingway, O Velho e o Mar

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro 
where livros.id = 1

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro 
where autores.id = 1
