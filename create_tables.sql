CREATE DATABASE IF NOT EXISTS proj_populacional;
USE proj_populacional;

CREATE TABLE populacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    regiao VARCHAR(30),
    faixa_etaria VARCHAR(50),
    sexo ENUM('Masculino', 'Feminino'),
    populacao BIGINT
);