-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
SELECT DISTINCT
Country
FROM
customers;

-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas 
-- entre empresas e países
SELECT DISTINCT Country,Company
FROM customers;

-- Nesta mesma consulta, atribua um alias com título em português para cada coluna

SELECT
CustomerId AS Cod_cliente,
FirstName AS Nome,
LastName AS Sobrenome,
Company AS Empresa,
Address AS Endereço,
City AS Cidade,
State AS Estado,
Country AS País,
PostalCode AS Cod_postal,
Phone AS Telefone,
Fax,
Email
FROM customers;