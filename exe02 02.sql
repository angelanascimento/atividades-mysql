CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal(6,2) not null,
descricao varchar(255),
quant_vendidas bigint
);

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255) not null,
peso varchar(255)
);

INSERT INTO tb_categorias (categoria, peso) VALUES ("Pequeno", "~450");
INSERT INTO tb_categorias (categoria, peso) VALUES ("Médio", "~1kg");
INSERT INTO tb_categorias (categoria, peso) VALUES ("Grande", "~1600 kg");
INSERT INTO tb_categorias (categoria, peso) VALUES ("Família", "~2200 kg");
INSERT INTO tb_categorias (categoria, peso) VALUES ("Família +", "~2800 kg");


INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("3 Queijos", 77.00, "Queijo, requeijão, oregano e parmesão ralado", 580, 3);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Calabresa", 25.00, "Queijo, calabresa e cebola, oregano", 2892, 1);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Pizza de Queijo", 87.00, "Queijo e orégano.", 4878, 3);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("4 Queijos", 28.00, "Queijo, requeijão, gorgonzola, oregano e parmesão ralado.", 2100, 1);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Portuguesa", 109.00, "Queijo, presunto, ovo de codorna, azeitona preta, cebola, oregano e pimentão verde.", 898, 4);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Frango com Cream Cheese", 125.00, "Queijo, frango desfiado, Cream Cheese, oregano e parmesão ralado.", 3, 4);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Veggie", 100.00, "Queijo, champignon, azeitona preta, cebola, oregano e pimentão verde", 687, 4);
INSERT INTO tb_pizzas (nome, preco, descricao, quant_vendidas, categoria_id) VALUES ("Marguerita", 100.00, "Queijo, tomate, oregano e manjericão.", 125, 5);

ALTER TABLE tb_pizzas ADD categoria_id bigint;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizza_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas WHERE preco >= 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_classes.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_classes.id = tb_pizzas.categoria_id
WHERE tb_categorias.categoria = "Grande";

