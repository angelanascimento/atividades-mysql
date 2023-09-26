CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
id bigint auto_increment primary key,
nome varchar(255) not null,
sobrenome varchar(255) not null,
funcao varchar(255) not null,
salario decimal(7,2) not null
);

INSERT INTO tb_colaboradores (nome, sobrenome, funcao, salario) VALUES("Angela", "Nascimento de Araújo", "Desenvolvedora Fullstack", 7000.00);
INSERT INTO tb_colaboradores (nome, sobrenome, funcao, salario) VALUES("João", "Pereira Gomes", "Desenvolvedor Fullstack", 4500.00);
INSERT INTO tb_colaboradores (nome, sobrenome, funcao, salario) VALUES("Maria", "Souza Santos", "Desenvolvedora Backend", 7800.00);
INSERT INTO tb_colaboradores (nome, sobrenome, funcao, salario) VALUES("Pedro", "Silva Santos", "Analista de Dados", 9890.00);
INSERT INTO tb_colaboradores (nome, sobrenome, funcao, salario) VALUES("Claudia", "Marques", "Designer UX/UI", 4800.00);

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET sobrenome  = "Marques Diniz" WHERE id = 5;
