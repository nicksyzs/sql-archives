create database relacionamentos

use relacionamentos

create table funcionarios(
id int primary key identity(1,1),
nome varchar(60),
telefone char(9)
)

create table dependentes(
id int primary key identity (1,1),
nome varchar(60) not null,
grauParent varchar(20) not null,
idFunc int not null
constraint fk_dependentes_funcionarios foreign key (idFunc)
references funcionarios(id)
)

insert into funcionarios
values ('Lucas','1111-1111')

insert into funcionarios
values ('Camila','2222-2222')

insert into funcionarios
values ('João','3333-3333')

select * from funcionarios

insert into dependentes
values ('Eduardo','Filho',1)

insert into dependentes
values ('Juliana','Filho',1)

insert into dependentes
values ('Gustavo','Pai',2)

insert into dependentes
values('Ricardo','Filho',35)

select * from dependentes
