/* DESAFIO: Mostar todas as vendas do ano de 2017 na cidade de SP */

SELECT DISTINCT A.NOME, A.CIDADE, A.ESTADO, YEAR (B.DATA_VENDA) as 'Ano da Venda' FROM tabela_de_clientes A RIGHT JOIN
notas_fiscais B ON A.CPF = B.CPF
WHERE YEAR(DATA_VENDA) = 2017 AND CIDADE = 'São Paulo'
GROUP BY NOME
;
