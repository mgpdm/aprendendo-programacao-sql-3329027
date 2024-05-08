-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT 
State AS estado,
Country as país,
CASE 
  WHEN State = 'SP' THEN 'São Paulo'
  when State = 'RJ' THEN 'Rio de Janeiro'
END AS estado_nome
FROM
customers
WHERE
Country LIKE 'Brazil';