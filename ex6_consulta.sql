-- Consulta dos países que contenham população maior que a população total da Espanha 
SELECT
    p.nome_pais,
    SUM(c.qtd_populacao) AS populacao_total
FROM
    Pais p
    JOIN Estado e ON p.id_pais = e.id_pais
    JOIN Cidade c ON e.id_estado = c.id_estado
WHERE
    p.nome_pais <> 'Espanha'
GROUP BY
    p.nome_pais
HAVING
    SUM(c.qtd_populacao) > (
        SELECT
            SUM(c1.qtd_populacao)
        FROM
            Pais p1
            JOIN Estado e1 ON p1.id_pais = e1.id_pais
            JOIN Cidade c1 ON e1.id_estado = c1.id_estado
        WHERE
            p1.nome_pais = 'Espanha'
    );
