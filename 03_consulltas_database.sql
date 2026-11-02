
USE gambiarra;

-- 1. Listar funcionários
SELECT * FROM Funcionario;

-- 2. Listar aparelhos
SELECT * FROM Aparelho;

-- 3. Consultar funcionário pelo ID
SELECT Nome
FROM Funcionario
WHERE id_funcionario = 1;

-- 4. Listar aparelhos e suas categorias
SELECT
    a.id_aparelho,
    a.Dono,
    a.Tipo,
    t.Categoria,
    t.Taxa
FROM Aparelho a
INNER JOIN Tipo t
    ON a.Tipo = t.Tipo;

-- 5. Quantidade de consertos por funcionário
SELECT
    f.Nome,
    COUNT(c.id_aparelho) AS total_consertos
FROM Funcionario f
LEFT JOIN Conserto c
    ON f.id_funcionario = c.id_funcionario
GROUP BY f.id_funcionario, f.Nome
ORDER BY total_consertos DESC;

-- 6. Experiência dos funcionários
SELECT
    f.Nome,
    e.Tipo,
    e.anos_experiencia
FROM experiencia e
INNER JOIN Funcionario f
    ON e.id_funcionario = f.id_funcionario;

-- 7. Quantidade de aparelhos por tipo
SELECT
    Tipo,
    COUNT(*) AS quantidade
FROM Aparelho
GROUP BY Tipo;

-- 8. Total de consertos
SELECT COUNT(*) AS total_consertos
FROM Conserto;
