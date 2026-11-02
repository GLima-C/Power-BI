
CREATE DATABASE IF NOT EXISTS gambiarra;
USE gambiarra;

-- 1. Funcionários
CREATE TABLE Funcionario (
    id_funcionario INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    PRIMARY KEY (id_funcionario)
);

-- 2. Tipos de aparelhos
CREATE TABLE Tipo (
    Tipo VARCHAR(50) NOT NULL,
    Categoria VARCHAR(50),
    Taxa DECIMAL(10,2),
    PRIMARY KEY (Tipo)
);

-- 3. Aparelhos
CREATE TABLE Aparelho (
    id_aparelho INT NOT NULL,
    Idade INT,
    Dono VARCHAR(100),
    Tipo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_aparelho),
    FOREIGN KEY (Tipo) REFERENCES Tipo(Tipo)
);

-- 4. Experiência dos funcionários
CREATE TABLE experiencia (
    id_funcionario INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    anos_experiencia INT,
    PRIMARY KEY (id_funcionario, Tipo),
    FOREIGN KEY (id_funcionario)
        REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (Tipo)
        REFERENCES Tipo(Tipo)
);

-- 5. Consertos realizados
CREATE TABLE Conserto (
    id_funcionario INT NOT NULL,
    id_aparelho INT NOT NULL,
    PRIMARY KEY (id_funcionario, id_aparelho),
    FOREIGN KEY (id_funcionario)
        REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_aparelho)
        REFERENCES Aparelho(id_aparelho)
);
