CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
id bigint auto_increment primary key,
nome varchar(255) not null,
ataque bigint not null,
vitorias bigint,
derrotas bigint
);

CREATE TABLE tb_classes (
id bigint auto_increment primary key,
categoria varchar(255) not null,
nivel varchar(255)
);

INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Pikachu", 3300, 80, 4, 2);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Charmander", 2500, 53, 1, 3);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Squirtle", 1800, 92, 7, 1);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Charizard", 4000, 200, 2, 3);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Wartortle", 1100, 13, 2, 1);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Bulbasaur", 3420, 81, 17, 4);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Ivysaur", 600, 25, 3, 4);
INSERT INTO tb_personagens (nome, ataque, vitorias, derrotas, categoria_id) VALUES ("Venusaur", 988, 55, 0, 4);

INSERT INTO tb_classes (categoria, nivel) VALUES ("Água", "Ultra");
INSERT INTO tb_classes (categoria, nivel) VALUES ("Eletrico", "Ultra");
INSERT INTO tb_classes (categoria, nivel) VALUES ("Fogo", "Ultra");
INSERT INTO tb_classes (categoria, nivel) VALUES ("Grama", "Ultra");
INSERT INTO tb_classes (categoria, nivel) VALUES ("Terra", "Ultra");
INSERT INTO tb_classes (categoria, nivel) VALUES ("Voador", "Ultra");


ALTER TABLE tb_personagens ADD categoria_id bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagem_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens WHERE ataque >= 2000;
SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.categoria_id;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.categoria_id
WHERE tb_classes.categoria = "Água";

