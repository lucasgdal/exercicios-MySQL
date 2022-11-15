/* DESAFIO: Selecionar somente os clientes com idade maior que 30 anos.*/
SELECT CONCAT(Nome," ",Sobrenome) as 'Nome_do_Cliente', Sexo, TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) as 'Idade',Estado_Civil as 'Estado Civil', Renda_Anual as 'Renda Anual do Cliente', 
Qtd_Filhos as 'Quantidade_de_filhos',Escolaridade
FROM clientes
WHERE TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) >= 30
ORDER BY Idade DESC;

/* DESAFIO: Identificar a renada mensal dos clientes com mais de 30 anos  */

SELECT CONCAT(Nome," ",Sobrenome) as 'Nome_do_Cliente', Sexo, TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) as 'Idade',Estado_Civil as 'Estado Civil', ROUND(Renda_Anual / 12, 2) as 'Renda Mensal do Cliente', 
Qtd_Filhos as 'Quantidade_de_filhos',Escolaridade
FROM clientes
WHERE TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) >= 30
ORDER BY TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) DESC;

/* DESAFIO: Identificar a renada mensal dos clientes com Ensino Médio */
SELECT CONCAT(Nome," ",Sobrenome) as 'Nome_do_Cliente', Sexo, TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) as 'Idade',Estado_Civil as 'Estado Civil', ROUND(Renda_Anual / 12, 2) as 'Renda Mensal do Cliente', 
Qtd_Filhos as 'Quantidade_de_filhos',Escolaridade
FROM clientes
WHERE Escolaridade = 'Ensino médio'
ORDER BY TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) DESC;

/* DESAFIO: Identificar a renada mensal dos clientes com Graduação */
SELECT CONCAT(Nome," ",Sobrenome) as 'Nome_do_Cliente', Sexo, TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) as 'Idade',Estado_Civil as 'Estado Civil', ROUND(Renda_Anual / 12, 2) as 'Renda Mensal do Cliente', 
Qtd_Filhos as 'Quantidade_de_filhos',Escolaridade
FROM clientes
WHERE Escolaridade = 'Graduação'
ORDER BY TIMESTAMPDIFF(YEAR, Data_Nascimento,CURDATE()) DESC;