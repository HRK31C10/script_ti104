 --Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F' 
 update produtos set valor = valor * 1.12 where nome like 'f%'


--Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 
--600
update produtos set quantidade = quantidade + 50 where valor between 400.00 and 700.00;


--Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque 
--sejam maiores que 300    
update produtos set quantidade = quantidade * 0.5 where quantidade <300;

--Exiba o produto de CODIGO = 4
select * from produtos where codigo = 4;

--Exibir todos os produtos que não tenham a letra 'Y'
select * from produtos where nome not like '%y%';

--Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 
--'MA'
select * from produtos where nome like 'mo%' and tipo like '%ma%';