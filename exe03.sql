CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id bigint auto_increment primary key,
nome varchar(255) not null,
sobrenome varchar(255) not null,
idade int,
nota decimal(5, 2)
);

INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Angela", "Nascimento de Araújo", 29, 10.0);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("João", "Pereira Gomes", 22, 9.8);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Maria", "Souza Santos", 31, 10.0);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Pedro", "Silva Santos", 25, 6.25);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Claudia", "Marques Diniz", 20, 4.0);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Valentina", "Constantino", 20, 8.7);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Enzo", "Diniz dos Santos", 19, 7.0);
INSERT INTO tb_estudantes (nome, sobrenome, idade, nota) VALUES("Lara", "Domingues Silveira", 26, 7.5);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota >= 7.0;
SELECT * FROM tb_estudantes WHERE nota <= 7.0;

UPDATE tb_colaboradores SET nome  = "Enzo Gabriel" WHERE id = 7;
