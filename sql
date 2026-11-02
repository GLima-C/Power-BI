CREATE DATABASE gambiarra;
USE gambiarra;

CREATE TABLE Funcionario (
    id_funcionario INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    PRIMARY KEY (id_funcionario)
);
