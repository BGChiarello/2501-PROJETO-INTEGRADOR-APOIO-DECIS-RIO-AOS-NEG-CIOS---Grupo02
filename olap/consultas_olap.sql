-- Total populacional por faixa etária (todos os anos)
SELECT faixa_etaria, SUM(populacao) AS total_populacao
FROM populacao
GROUP BY faixa_etaria
ORDER BY total_populacao DESC;

-- População por região e ano
SELECT ano, regiao, SUM(populacao) AS total
FROM populacao
GROUP BY ano, regiao;

-- Evolução da população idosa (66+)
SELECT ano, SUM(populacao) AS idosos
FROM populacao
WHERE faixa_etaria IN ('Terceira Idade (66 a 80 anos)', 'Quarta Idade (80+ anos)')
GROUP BY ano
ORDER BY ano;

-- Comparativo Jovens Adultos vs Meia Idade
SELECT ano,
       SUM(CASE WHEN faixa_etaria = 'Jovem (21 a 26 anos)' THEN populacao ELSE 0 END) AS jovens,
       SUM(CASE WHEN faixa_etaria = 'Meia Idade (41 a 65 anos)' THEN populacao ELSE 0 END) AS meia_idade
FROM populacao
GROUP BY ano;
