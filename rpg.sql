create database jogoRPG
use jogoRPG
create table personagens(
id int primary key identity(1,1),
nome varchar(20) not null,
forca int not null
)
create table itens(
id int primary key identity(1,1),
nome varchar(20) not null,
dano int not null
)
create table personagemItem(
id int primary key identity(1,1),
idPersonagem int not null,
idItem int not null
constraint fk_personagemItem_Personagem foreign key(idPersonagem)
references personagens(id),
constraint fk_personagemItem_Item foreign key(idItem)
references itens(id)
)
insert into personagens
values('Goku',1)
insert into personagens
values('Simon',10)
insert into personagens
values('Datena',1000)
insert into itens
values ('cadeira',1000)
insert into itens
values ('espada',100)
insert into itens
values ('arco',150)
insert into personagemItem
values (3,1)
insert into personagemItem
values (2,1)
insert into personagemItem
values (2,3)
select * from personagemItem
