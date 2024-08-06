create database agendaEscolar

use agendaEscolar

create table tarefas(
	id int primary key, 
	titulo varchar(30) not null,
	descricao varchar(100), 
	dataEntrega date, 
	statusTarefa varchar(30) not null, 
)

insert into tarefas
(id, titulo, descricao, dataEntrega, statusTarefa)
values (1, 'Criando um banco de dados', 'Aula pratica do SQL Server', '06/08/2024', 'completo')

select * from tarefas

insert into tarefas
(id, titulo, descricao, dataEntrega, statusTarefa)
values (2, 'Estudar para fisica', 'Estudo simples de 1 hora', '06/08/2024', 'pendente')

insert into tarefas
(id, titulo, descricao, dataEntrega, statusTarefa)
values (3, 'Fazer tarefa de ingles', 'Tarefa de casa', '06/08/2024', 'completo')

insert into tarefas
(id, titulo, descricao, dataEntrega, statusTarefa)
values (4, 'Estudar para biologia', 'Rever os conceitos dos biomas', '06/08/2024', 'em andamento')

insert into tarefas
(id, titulo, descricao, dataEntrega, statusTarefa)
values (5, 'Crie um script em java', 'Aula pratica', '06/08/2024', 'pendente')

update tarefas set statusTarefa='completo'
where id=4

update tarefas set descricao='Fazer as tarefas para entender mais sobre verbos'
where id=3

delete from tarefas
where id=1

delete from tarefas
where statusTarefa='completo'
