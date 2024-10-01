create database relacionamento_selec

use relacionamento_selec

create table funcionarios(
id int primary key identity(1,1),
nome varchar(60),
telefone char(9),
)

create table dependentes(
id int primary key identity (1,1),
nome varchar(60) not null,
granParent varchar(20) not null, /*Era pra ser Grau parentesco*/
idFunc int not null,
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

select * from dependentes

select funcionarios.nome as 'Nome Funcionário', 
funcionarios.telefone as 'Telefone Funcionário',
dependentes.nome as 'Nome Dependente',
dependentes.granParent from dependentes inner join funcionarios
on funcionarios.id=dependentes.idFunc
/*where funcionarios.id = 1 (Trazer funcionarios com apenas o id 1)
where dependentes.id=4 (Trazer apenas dependentes com id 4)

/*SELECT personagens.nome,itens.nomeItem FROM personagemItem
INNER JOIN personagens ON personagens.id = personagem_Item.idPersonagem
INNER JOIN itens ON itens.id = personagem_item.idItem
ORDER by personagens.nome*/
