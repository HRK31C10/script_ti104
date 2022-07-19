-- Apagar o banco de dados
drop database dbPadaria;

-- Visualizar os banco de dados no servidor MySQL
show databases;

-- Criar o banco de dados
create database dbPadaria;

-- Acessando o banco de dados
use dbPadaria;

-- Visualizar banco de dados criado
show databases;

-- criando as tabelas no banco de dados
create table tbFuncionarios(
codigo int,
nome varchar(100),
telCel char(10),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100)
);

create table tbUsuarios(
codigo int,
nome varchar(20),
senha varchar(20)
);

CREATE TABLE PRODUTOS( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
-- describe tbFuncionarios;
desc tbFuncionarios;
desc tbUsuarios;

-- inserir registro nas tabelas do banco de dados

insert into tbFuncionarios(codigo,nome,telCel,logradouro,
numero,cep,bairro)values(1,'Amanda da Cunha','95724-7852',
'Rua Maria Joana da Cunha','35B','04523-985','Santo amaro');

insert into tbusuarios(codigo,nome,senha)values(1,'senacl13','senac123');
insert into tbusuarios(codigo,nome,senha)values(2,'joao','123');
insert into tbusuarios(codigo,nome,senha)values(3,'joao','1234');
insert into tbusuarios(codigo,nome,senha)values(4,'pedro','12345');

-- Visualizando os registros nas tabelas
select * from tbFuncionarios;

select * from tbusuarios;

-- Alterar os registros nas tabelas. Que achar necessário



INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD 
PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 ); 



