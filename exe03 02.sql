CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos (
id bigint auto_increment primary key,
nome varchar(255) not null,
descricao varchar(500),
marca varchar(255),
preco decimal(7,2) not null,
quant_vendidas bigint,
categoria_id bigint
);

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255),
desconto int
);

INSERT INTO tb_categorias (categoria, desconto) VALUES ("Medicamentos", 25);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Saúde e Bem-estar", 5);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Higiene Pessoal", 10);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Beleza", 5);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Skincare", 5);

INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Dipirona", "10 Comprimidos de 1g", "Prati", 9.99, 4000, 1);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Analgésico", "10 Comprimidos", "Dorflex", 6.99, 6589, 1);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Protetor Solar", "FPS70 Sem Cor 40g", "Vichy ", 72.90, 400, 2);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Fralda", "Tamanho G 98 Unidades", "Pampers", 150.00, 2578, 3);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Protetor Diário", "40 Unidades Cuidado Avançado Suave", "Intimus", 1.89, 659, 3);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Sérum Concentrado Anti-Idade", "Sébium Anti-marcas da Acne 30ml", "Bioderma", 219.00, 1280, 5);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Pasta De Dente", "Pro-Alivio Imediato Xtreme 140g", "Colgate", 17.49, 1050, 3);
INSERT INTO tb_produtos (nome, descricao, marca, preco, quant_vendidas, categoria_id) VALUES ("Esmalte", "Natural Renda 8ml", "Risqué", 4.99, 3874, 4);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produto_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.categoria = "Medicamentos";

