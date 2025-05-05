-- Mostra o total populacional agrupado por sigla da localidade, década (2024-2070) e faixas de idade (0-120+ anos)

WITH decadas AS (
    SELECT DISTINCT
        ano,
        CONCAT(FLOOR(ano/10)*10, '-', FLOOR(ano/10)*10+9) AS decada,
        FLOOR(ano/10) AS ordem_decada
    FROM fact_populacao
    WHERE ano BETWEEN 2024 AND 2070
),
faixas AS (
    SELECT 
        id_faixa,
        CASE
            WHEN idade <= 119 THEN CONCAT(FLOOR(idade/5)*5, '-', FLOOR(idade/5)*5+4, ' anos')
            ELSE '120+ anos'
        END AS faixa_etaria,
        CASE
            WHEN idade <= 119 THEN FLOOR(idade/5)+1
            ELSE 25
        END AS ordem_faixa
    FROM faixa_etaria
)
SELECT 
    l.sigla AS Localidade,
    d.decada AS Década,
    f.faixa_etaria AS Faixa_Etaria,
    SUM(fp.estimativa) AS Populacao_Total
FROM fact_populacao fp
JOIN decadas d ON fp.ano = d.ano
JOIN faixas f ON fp.id_faixa = f.id_faixa
JOIN dim_localidade l ON fp.id_localidade = l.id_localidade
GROUP BY l.sigla, d.decada, d.ordem_decada, f.faixa_etaria, f.ordem_faixa
ORDER BY l.sigla, d.ordem_decada, f.ordem_faixa;
