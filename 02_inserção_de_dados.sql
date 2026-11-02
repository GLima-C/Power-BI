
USE gambiarra;

-- Funcionários
INSERT INTO Funcionario
(id_funcionario, Nome, Cargo)
VALUES
(1, 'Gabriel Lima', 'Tecnico'),
(2, 'Henrique', 'Tecnico'),
(3, 'Willian', 'Supervisor');

-- Tipos
INSERT INTO Tipo
(Tipo, Categoria, Taxa)
VALUES
('Geladeira', 'Eletrodomestico', 200.00),
('Radio', 'Eletronico', 100.00),
('Celular', 'Eletronico', 400.00);

-- Aparelhos
INSERT INTO Aparelho
(id_aparelho, Idade, Dono, Tipo)
VALUES
(101, 5, 'Cliente A', 'Geladeira'),
(102, 2, 'Cliente B', 'Radio'),
(103, 3, 'Cliente C', 'Celular');

-- Experiência
INSERT INTO experiencia
(id_funcionario, Tipo, anos_experiencia)
VALUES
(1, 'Geladeira', 3),
(2, 'Radio', 5),
(3, 'Celular', 4);

-- Consertos
INSERT INTO Conserto
(id_funcionario, id_aparelho)
VALUES
(1, 101),
(2, 102),
(2, 103),
(3, 101);
