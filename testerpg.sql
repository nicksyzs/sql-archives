create database rpg

use rpg

create table personagens(
item int primary key identity(1,1),
nome varchar(60),
forca char(9)
)

create table personagemItem(
id int primary key identity (1,1),
idPersonagem int,
idItem int,
constraint fk_personagemItem_personagem foreign key (idPersonagem),
references personagens(nome),
constraint fk_personagemItem_item foreign key (personagemItem)
)

insert into personagens
values ('Link', 150)

insert into item
values ('Espada', 1)

insert into item
values ('Arco', 2)

insert into item
values ('Poção' 3)
