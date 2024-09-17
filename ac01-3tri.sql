create database base1
 
use base1
 
create table produtos(
	id int primary key,
	nome varchar(50) not null,
	preco float not null,
	estoque int,
	categoria varchar(50)
)
 --1
insert into produtos (id, nome, preco, estoque, categoria) values
(1, 'Mesa nada gamer', 350, 5, 'Mobiliário'),
(2, 'Air fryer', 560, 8, 'Eletrodoméstico'),
(3, 'Vassoura', 15, 3, 'Limpeza'),
(4, 'Smartphone XIOMI POCO X5 5G', 2000, 3, 'Eletrônico'),
(5, 'Teclado Mecânico', 550, 10, 'Eletrônico'),
(6,'Leite em pó',40,4,'Perecível'),
(7, 'All Star', 250, 15, 'Roupa'),
(8, 'Colar de Prata', 80, 20, 'Acessório'),
(9, 'Escova de privada', 10, 69, 'Higiene'),
(10, 'PROMOÇÃO - Microfone Fifine', 180, 5, 'Eletrônico')

 --2
select id,nome,preco,estoque,categoria from produtos
 --3
select nome,preco from produtos
order by nome
 --4
select id,nome,preco,estoque,categoria from produtos
where preco>100
 --5
select id,nome,preco,estoque,categoria from produtos
where estoque>0
order by preco desc
 --6
select max(preco) from produtos
 --7
select min(preco) from produtos
 --9
select id,nome,preco,estoque,categoria from produtos
where preco between 500 and 1000
order by preco
 --10
select id,nome,preco,estoque,categoria from produtos
where categoria='Eletrônico' and preco>350
 --11
select sum(preco) from produtos
where estoque>0
 --12
select avg(preco) from produtos
where categoria='Perecível' and preco<600 and estoque>0
 --13
select id,nome,preco,estoque,categoria from produtos
where nome like 'Smartphone%'
 --14
select min(preco) from produtos
where estoque>0
 --15
select id,nome,preco,estoque,categoria from produtos
where nome like '%em pó' and estoque>0
order by preco desc
 --16
select id,nome,preco,estoque,categoria from produtos
where estoque=0
order by nome
 --17
select count(id) from produtos
where estoque=0
 --18
select count(id) from produtos
where categoria='Limpeza' and estoque>0
 --19
select id,nome,preco,estoque,categoria from produtos
where preco<50
 --20
select id,nome,preco,estoque,categoria from produtos
where nome like '%PROMOÇÃO%'
