-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma 
-- das compras realizadas nele, bem como o valor da compra mínima e máxima, 
-- a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT
BillingCountry,
SUM(Total) AS soma,
MIN(Total) AS compra_minima,
MAX(Total) AS compra_maxima,
Count(Total) AS quantidade,
ROUND(AVG(Total),2) AS media
FROM
invoices
GROUP BY BillingCountry
ORDER by BillingCountry ASC;

SELECT DISTINCT
BillingCountry,
BillingCity
FROM
invoices
ORDER BY BillingCountry ASC;

SELECT
BillingCountry,
SUM(Total) AS soma,
MIN(Total) AS compra_minima,
MAX(Total) AS compra_maxima,
Count(Total) AS quantidade,
ROUND(AVG(Total),2) AS media
FROM
invoices
WHERE
BillingCountry LIKE 'Cze%';
