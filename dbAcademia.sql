drop database dbacademia;

show databases;

create database dbAcademia;

use dbAcademia;

create table tbAtividade(
id int not null auto_increment,
atividade varchar(45),
primary key(id)
);

create table tbMonitor(
id_aluno int not null auto_increment,
primary key(id_aluno)
);

create table tbInstrutor(
rg int not null unique,
nome varchar(45),
nascimento date,
titulacao varchar(45) not null unique,
telefone varchar(45)
);

create table tbAluno(
matricula int not null unique,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int not null auto_increment,
primary key(id_turma)
);

create table tbRegistro(
id_aluno int not null,
id_turma int not null,
ausencia int,
id_registro int not null auto_increment,
primary key(id_registro),
foreign key(id_aluno)references tbMonitor(id_aluno),
foreign key(id_turma)references tbAluno(id_turma)
);

create table tbTurma(
id int not null,
quant_alunos int,
horario_aula time,
duracao_aula time,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int not null,
id_monitor int not null auto_increment,
primary key(id_monitor),
foreign key(id)references tbAtividade(id)
);

desc tbAtividade;
desc tbRegistro;
desc tbTurma;
desc tbMonitor;
desc tbAluno;
desc tbInstrutor;

show tables;

/*
insert into tbAtividade(id,atividade)values(1,'Musculação');

insert into tbAluno(matricula,data_matricula,nome,endereco,telefone,nascimento,
altura,peso,id_turma)values(20,'200/06/07','Herick Cezar','Av.Celso dos Santos',
'11 98546-8300', '2004/07/01',1.74,60.00,21);

insert into tbMonitor(id_aluno)values(20);

insert into tbInstrutor(rg,nome,nascimento,titulacao,telefone)values
(534789984,'Carlos Henrique','2001/01/12','doutorado','11 98256-9422');

insert into tbTurma(id,quant_alunos,horario_aula,duracao_aula,data_inicio
data_fim,atividade,id_instrutor,id_monitor)values(69,53,'14:00','1:30',
'2022/01/07','2023/01/07','Musculação'22,14);

insert into tbRegistro(id_aluno,id_turma,ausencia,id_registro)values(
34,222,3,47);

select * from tbAtividade;
select * from tbAluno;
select * from tbMonitor;
select * from tbInstrutor;
select * from tbTurma;
select * from tbRegistro;

--Alterar os registros nas tabelas. Que achar necessário