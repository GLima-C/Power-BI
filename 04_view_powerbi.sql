
USE gambiarra;

CREATE OR REPLACE VIEW vw_consertos_powerbi AS
SELECT
    c.id_funcionario,
    f.Nome AS funcionario,
    f.Cargo,
    c.id_aparelho,
    a.Tipo AS tipo_aparelho,
    a.Idade AS idade_aparelho,
    a.Dono,
    t.Categoria,
    t.Taxa
FROM Conserto c
INNER JOIN Funcionario f
    ON c.id_funcionario = f.id_funcionario
INNER JOIN Aparelho a
    ON c.id_aparelho = a.id_aparelho
INNER JOIN Tipo t
    ON a.Tipo = t.Tipo;

-- Consultar dados para o Power BI
SELECT * FROM vw_consertos_powerbi;
