--Crie uma database chamada Zoologico

create database dbZoologico;

--Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes campos

create table tbAnimais(
codigo int,
tipo char(15),
nome char(30),
idade tinyint,
valor decimal(10,2)
);

insert into tbAnimais values(1,'cachorro','Djudi',3,'300.00');

insert into tbAnimais values(2,'cachorro','Sula',5,'300.00');

insert into tbAnimais values(3,'cachorro','Sarina',7,'300.00');

insert into tbAnimais values(4,'gato','Pipa',2,'500.00');

insert into tbAnimais values(5,'gato','Sarangue',2,'500.00');

insert into tbAnimais values(6,'gato','Clarences',1,'500.00');

insert into tbAnimais values(7,'coruja','Agnes',0,'700.00');

insert into tbAnimais values(8,'coruja','Arabela'1,'700.00');

insert into tbAnimais values(9,'sapo','Quash',1,'100.00');

insert into tbAnimais values(10,'peixe','Fish',0,'100.00');



--Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIs.
show tables;
--Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, 
--apresentando todos os registros da tabela.
select tipo,nome from tbAnimais;
 --Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
--ANIMAIS, apresentado todos os registros.
select tipo,nome, idade from tbAnimais;
--Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS
--apresentando todos os registros.
select tipo,nome from tbAnimais;
--Apresente a legenda da coluna TIPO com o alias 
--[Tipo de Animal] e a coluna nome com o alias [Nome do Animal].
select tipo as 'TIPO', nome as 'NOME' from tbanimais;
--Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
--ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
--alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna 
--IDADE com o alias [Tempo de Vida]. 
select tipo as 'TIPO', nome as 'NOME', idade as 'IDADE' from tbanimais;