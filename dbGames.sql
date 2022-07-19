drop database dbGames;

show databases;

create database dbGames;

use dbGames;

create table tbEquipe(
idEquipe int not null auto_increment,
primary key(idEquipe)
);

create table tbJogador(
idJogador int not null auto_increment,
nome varchar(45),
idEquipe int not null,
primary key (idJogador),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbCidade(
idCidade int not null auto_increment,
nome varchar(45),
idEquipe int not null,
primary key(idCidade),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbTecnico(
idTecnico int not null auto_increment,
nome varchar(45),
funcao varchar(30),
idEquipe int not null,
primary key(idTecnico),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

create table tbJogo(
idJogo int not null auto_increment,
idEquipe int not null,
idVisitante int not null,
pontos_idEquipe int not null,
pontos_idVisitantes int not null,
data date,
primary key(idJogo),
foreign key(idEquipe)references tbEquipe(idEquipe)
);

desc tbEquipe;
desc tbJogador;
desc tbCidade;
desc tbTecnico;
desc tbJogo;

show tables;