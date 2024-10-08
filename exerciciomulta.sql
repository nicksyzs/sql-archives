create database depTransito

use depTransito

create table veiculos (
placa char(7)primary key,
carro varchar(30),
marca varchar(30),
)

create table multas (
id int primary key,
multa varchar(60),
valor float,
)

create table multas_veiculos(
	id int primary key identity (1,1),
	idVeiculos char(7),
	idMultas int,
	constraint fk_veiculos_multas_veiculos
	foreign key (idVeiculos) references veiculos(placa),
	constraint fk_multa_multas_veiculos
	foreign key (idMultas)references multas(id),
)

