CREATE DATABASE  db_construindo_vidas;

USE  db_construindo_vidas;

CREATE TABLE tb_produtos (
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal(7,2) not null,
quantidade varchar(255),
marca varchar(255),
categoria_id bigint
);

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255),
desconto int
);

INSERT INTO tb_categorias (categoria, desconto) VALUES ("Argamassa", 5);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Tijolo", 10);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Rejunte", 5);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Cimento", 20);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("DryWall", 6);

INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Argamassa", 22.90, "20kg", "Axton", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Argamassa", 36.90, "20kg", "Fortaleza", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Argamassa", 33.21, "20kg", "Votomassa", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Placa de Drywall", 35.90, "1,80x1,20", " Leroy Merlin", 5);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Cimento CP", 28.90, "50kg", "Votoran", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Rejunte Acrílico", 29.90, "1kg", "Axton", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Tijolo Plaqueta Vermelho", 1.99, "10,2x3,4x22,2cm", "Leroy Merlin", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, marca, categoria_id) VALUES ("Rejunte Acrílico", 40.41, "1kg", "Fortaleza", 3);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produto_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.categoria = "Argamassa";