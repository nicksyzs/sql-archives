create database ex2
use ex2

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

insert into autor_livros (id_autor, id_livro) values (1, 1); 
insert into autor_livros (id_autor, id_livro) values (2, 2); 
insert into autor_livros (id_autor, id_livro) values (3, 3); 
insert into autor_livros (id_autor, id_livro) values (4, 4); 
insert into autor_livros (id_autor, id_livro) values (5, 5); 
insert into autor_livros (id_autor, id_livro) values (6, 6); 
insert into autor_livros (id_autor, id_livro) values (7, 7); 
insert into autor_livros (id_autor, id_livro) values (8, 8); 
insert into autor_livros (id_autor, id_livro) values (9, 9);
insert into autor_livros (id_autor, id_livro) values (10, 10); 

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro 
where livros.id_livro = 1

select autores.nome_autor, livros.nome_livro from autor_livros
inner join autores on autores.id_autor=autor_livros.id_autor
inner join livros on livros.id_livro=autor_livros.id_livro 
where autores.id_autor = 1
