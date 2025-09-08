/* =============================
SEÇÃO 1 - Exploração Inicial da Tabela
============================= */

-- Leitura das 10 primeiras linhas para analisar as colunas existentes
SELECT TOP 10 *
from [dbo].[clean_data]

-- Análise de valores distintos por categoria e subcategoria de produtos
SELECT DISTINCT subcategoria
from [dbo].[clean_data]

/* =============================
SEÇÃO 2 - Performance por vendedor
============================= */

-- Quantificação de pedidos e de valor em vendas por vendedor
SELECT TOP 20 
	vendedor,
	SUM(CAST(quantidade_pedidos AS INT)) AS quantidade_itens_vendidos,
	SUM(CAST (total_vendas AS DECIMAL(18, 2))) AS total_vendas
FROM [dbo].[clean_data]
WHERE vendedor IS NOT NULL
GROUP BY vendedor
ORDER BY total_vendas DESC
SELECT 
	vendedor,
	quantidade_pedidos,
	CASE
		WHEN quantidade_pedidos <=50 THEN '10-50 itens'
		WHEN quantidade_pedidos <=150 THEN '51-150 itens'
		ELSE '151+ itens'
	END AS FaixaItens
FROM clean_data
SELECT 
	vendedor,
	total_vendas,
	CASE
		WHEN total_vendas <=10000 THEN 'Até 10k'
		WHEN total_vendas <=50000 THEN '10k - 50k'
		ELSE '151+ itens'
	END AS FaixaFaturamento
FROM clean_data


/* =============================
SEÇÃO 3 - Impacto do desconto sobre o produto
============================= */

SELECT
	CASE
		WHEN desconto_percentual = 0.0 THEN '0%'
		WHEN desconto_percentual BETWEEN 0.01 AND 0.10 THEN '1% - 10%'
		WHEN desconto_percentual BETWEEN 0.11 AND 0.20 THEN '11% - 20%'
		ELSE 'Over 20%'
	END AS faixa_desconto,
	SUM(CONVERT(INT, quantidade_pedidos)) AS itens_total,
	SUM(CONVERT(DECIMAL(18,2), total_vendas)) AS total_vendas
FROM [dbo].[clean_data]
GROUP BY
	CASE
		WHEN desconto_percentual = 0.0 THEN '0%'
		WHEN desconto_percentual BETWEEN 0.01 AND 0.10 THEN '1% - 10%'
		WHEN desconto_percentual BETWEEN 0.11 AND 0.20 THEN '11% - 20%'
		ELSE 'Over 20%'
	END
ORDER BY faixa_desconto

/* =============================
SEÇÃO 4 - Análise por Categoria e Subcategoria Mais Vendida
============================= */

-- Ranking de Categoria por Quantidade e Valor
SELECT
	categoria_produto,
	SUM(CONVERT(INT, quantidade_pedidos)) AS itens_total,
	SUM(CONVERT(DECIMAL(18,2), total_vendas)) AS total_vendas
FROM [dbo].[clean_data]
GROUP BY categoria_produto
ORDER BY total_vendas DESC

-- Ranking de Subcategorias
SELECT
	subcategoria,
	SUM(CONVERT(INT, quantidade_pedidos)) AS itens_total,
	SUM(CONVERT(DECIMAL(18,2), total_vendas)) AS total_vendas
FROM [dbo].[clean_data]
GROUP BY subcategoria
ORDER BY total_vendas DESC
