# Projeto de Análise de Vendas – DQLab Store
## Objetivo
Este projeto tem como objetivo analisar a performance de vendas de uma base transacional fictícia, explorando:
* O desempenho por vendedor;
* O impacto dos descontos aplicados nas vendas;
* A performance por categorias e subcategorias de produtos;
* A evolução de indicadores principais (faturamento, volume de itens, ticket médio).
  
Os resultados foram consolidados em um dashboard interativo no Power BI, que permite explorar insights de maneira visual e dinâmica.

## Estrutura do Projeto
### 1. SQL – Preparação e Exploração dos Dados
O código SQL foi dividido em seções para facilitar a análise:
#### Seção 1 – Exploração inicial da tabela
Visualização das primeiras linhas (SELECT TOP 10)
Análise de colunas de interesse (categoria, subcategoria, vendedor etc.)

#### Seção 2 – Performance por vendedor
Cálculo de quantidade de itens vendidos e faturamento total por vendedor
Criação de faixas de desempenho (quantidade de itens e faturamento)

#### Seção 3 – Impacto dos descontos
Criação de faixas de desconto (% aplicado)
Quantificação de impacto em itens vendidos e total de vendas

#### Seção 4 – Categorias e Subcategorias mais vendidas
Ranking de categorias por quantidade e valor
Ranking de subcategorias por volume de vendas

### 2. Power BI – Construção do Dashboard
O dashboard foi estruturado para responder perguntas de negócio.

#### Cards de KPIs principais:
* Pedidos
* Crescimento % em relação ao mês e ano anterior
* Desconto médio aplicado
  
#### Gráficos principais:
* Impacto do desconto
* Vendas por categorias e subcategorias
* Ranking de top vendedores
* Faturamento x quantidade (dispersão)
* Demanda por produto

#### Funcionalidades extras:
* Botão de resetar filtros
* Botão de alternância de visão por faturamento
* Filtros por ano, mês, categoria e vendedor

## Tecnologias Utilizadas

**SQL Server**: para exploração e preparação dos dados

**Power BI**: para visualização e análise interativa

**DAX**: criação de medidas auxiliares (crescimento mensal, crescimento anual, desconto médio etc)

## Dashboard Final

### Por Itens Vendidos
<img width="1444" height="798" alt="p1" src="https://github.com/user-attachments/assets/6dd6a3db-56d4-4a58-a521-de8a7e18eaef" />

### Por Faturamento
<img width="1447" height="795" alt="p2" src="https://github.com/user-attachments/assets/f7d1fee8-0188-41d8-8475-1be82d1b9ca8" />

### Versão Por Vídeo
Clique no link para análise em vídeo:
https://youtu.be/34b6wbvg28w

## Nota Final: Principais Insights

* A maior parte das vendas concentra-se em tecnologia, especialmente em periféricos e pastas;
* Alguns vendedores respondem por uma fatia expressiva do faturamento, destacando a importância da análise individual;
* A aplicação de descontos moderados (até 10%) tem impacto significativo no volume de itens vendidos.
