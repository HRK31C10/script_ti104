drop database dbclinica_medica;

show databases;

create database dbclinica_medica;

use dbclinica_medica;

create table tbMedico(
idMedico int not null auto_increment,
nmMedico varchar(45),
telefoneMedico varchar(45),
primary key(idMedico)
);

create table tbPaciente(
idPaciente int not null auto_increment,
nmPaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45),
primary key(idPaciente)
);

create table tbReceita(
idReceita int not null auto_increment,
descricao varchar(255),
primary key(idReceita)
);

create table tbConsulta(
idConsulta int not null auto_increment,
dt_consulta datetime,
idMedico int not null,
idPaciente int not null,
idReceita int not null,
primary key(idConsulta),
foreign key(idMedico)references tbMedico(idMedico),
foreign key(idPaciente)references tbPaciente(idPaciente),
foreign key(idReceita)references tbReceita(idReceita)
);

desc tbMedico;
desc tbPaciente;
desc tbReceita;
desc tbConsulta;

show tables;