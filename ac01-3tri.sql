create database base1
 
use base1
 
create table produtos(
	id int primary key,
	nome varchar(50) not null,
	preco float not null,
	estoque int not null,
	categoria varchar(50)
)
 
insert into produtos (id, nome, preco, estoque, categoria) values
(1, 'Sabão em pó', 20, 3, 'Limpeza'),
(2, 'Celular Android', 900, 2, 'Eletrônico'),
(3, 'Teclado Mecânico', 150, 10, 'Eletrônico'),
(4, 'Cadeira Ergonomica', 350, 5, 'Mobiliário'),
(5,'Maçã',2.15,30,'Perecível'),
(6, 'Cafeteira Elétrica', 120, 8, 'Eletrodoméstico'),
(7, 'Tênis Esportivo', 250, 15, 'Vestuário'),
(8, 'Óculos de Sol', 80, 20, 'Acessório'),
(9, 'Escova de Dente', 10, 50, 'Higiene'),
(10, 'Mouse Sem Fio', 60, 12, 'Eletrônico')
 
select id,nome,preco,estoque,categoria from produtos
 
select nome,preco from produtos
order by nome
 
select id,nome,preco,estoque,categoria from produtos
where preco>100
 
select id,nome,preco,estoque,categoria from produtos
where estoque>0
order by preco desc
 
select max(preco) from produtos
 
select min(preco) from produtos
 
select id,nome,preco,estoque,categoria from produtos
where preco between 500 and 1000
order by preco
 
select id,nome,preco,estoque,categoria from produtos
where categoria='Eletrônico' and preco>350
 
select sum(preco) from produtos
where estoque>0
 
select avg(preco) from produtos
where categoria='Perecível' and preco<600 and estoque>0
 
select id,nome,preco,estoque,categoria from produtos
where nome like 'Smartphone%'
 
select min(preco) from produtos
where estoque>0
 
select id,nome,preco,estoque,categoria from produtos
where nome like '%em pó' and estoque>0
order by preco desc
 
select id,nome,preco,estoque,categoria from produtos
where estoque=0
order by nome
 
select count(id) from produtos
where estoque=0
 
select count(id) from produtos
where categoria='Limpeza' and estoque>0
 
select id,nome,preco,estoque,categoria from produtos
where preco<50
 
select id,nome,preco,estoque,categoria from produtos
where nome like '%PROMOÇÃO%'
