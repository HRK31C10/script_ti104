drop database dbVendas;

create database dbVendas;

use dbVendas;

create table tbProdutos(
codProd int not null auto_increment,
nome varchar(45),
primary key(codProd)
);

create table tbVendedor(
codVendedor int not null auto_increment,
nome varchar(45),
primary key(codVendedor)
);

create table tbEquipes(
codEquipe int not null auto_increment,
nome varchar(45),
primary key(codEquipe)
);

create table tbVendas(
codVenda int not null auto_increment,
codProd int not null,
codVendedor int not null,
codEquipe int not null,
primary key(codVenda),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codVendedor)references tbVendedor(codVendedor),
foreign key(codEquipe)references tbEquipes(codEquipe)
);

desc tbProdutos;
desc tbVendedor;
desc tbEquipes;
desc tbVendas;

show tables;
